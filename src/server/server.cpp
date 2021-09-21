#include <iostream>
#include <sys/types.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <string.h>
#include <string>
#include <regex>
#include <iterator>
#include <algorithm>
#include <vector>
#include <sstream>
#include <tuple>
using namespace std;

int array_filler(int *number_array, int array_size, int array_value, int array_id)
{
    for (int i=0; i != array_size; ++i)
    {
        number_array[array_id] = (array_value);
    }
}

tuple<string, string> create_message(string buffer)
{
    cout << "Message to work with: " << buffer << endl;
    regex number_regex ("[\\d]+");
    auto number_begin = sregex_iterator(buffer.begin(), buffer.end(), number_regex);
    auto number_end = sregex_iterator();
    int number_amount= distance(number_begin, number_end);
    cout << "Found " << distance(number_begin, number_end) << "numbers\n";
    int number_list[number_amount];
    int array_id = 0;
    for (sregex_iterator i = number_begin; i != number_end; ++i)
        {
        stringstream intValue((*i).str());
        int value;
        intValue>>value;
        array_filler(number_list, number_amount, value, array_id);
        array_id++;
        }
    sort(number_list, number_list+number_amount);
    int sum = 0;
    for (int i = 0; i != number_amount; i++)
    {
        sum += number_list[i];
        cout << number_list[i] << " ";
    }
    cout << endl;
    cout << sum << endl;
    string numbers_to_send="";
    for (int i = 0; i != number_amount; i++)
    {
        stringstream ss;
        ss << number_list[i];
        string value_to_add = ss.str();
        numbers_to_send += value_to_add;
        string space_char = " ";
        numbers_to_send += space_char;
    }
    stringstream ss;
    ss << sum;
    string sum_to_add = ss.str();
    //message_to_send += sum_to_add;
    cout << "Numbers to send: " << numbers_to_send << endl;
    cout << "Sum of numbers: " << sum_to_add << endl;

    return make_tuple(numbers_to_send, sum_to_add);
}

int main()
{
    // Create a socket
    int listening = socket(AF_INET, SOCK_STREAM, 0);
    if (listening == -1)
    {
        cerr << "Can't create a socket";
        return -1;
    }
    // Bind a socket to a IP/port
    sockaddr_in hint;
    hint.sin_family = AF_INET;
    hint.sin_port = htons(54000);
    inet_pton(AF_INET, "0.0.0.0", &hint.sin_addr);
    if (bind(listening, (sockaddr*)&hint, sizeof(hint)) == -1)
    {
        cerr << "Can't bind to IP/port";
        return -2;
    }
    // Mark the socket for listening in
    if (listen(listening, SOMAXCONN) == -1)
    {
        cerr << "Can't listen";
        return -3;
    }
    // Accept a call
    sockaddr_in client;
    socklen_t clientSize = sizeof(client);
    char host[NI_MAXHOST];
    char svc[NI_MAXSERV];

    int clientSocket = accept(listening, (sockaddr*)&client, &clientSize);
    if (clientSocket == -1)
    {
        cerr << "Problem with client connecting!";
        return -4;
    }
    // Close the listening socket
    close(listening);
    memset(host, 0, NI_MAXHOST);
    memset(svc, 0, NI_MAXSERV);
    int result = getnameinfo((sockaddr*)&client, sizeof(client), host, NI_MAXHOST, svc, NI_MAXSERV, 0);
    if (result)
    {
        cout << host << "connected on " << svc << endl;
    }
    else
    {
        inet_ntop(AF_INET, &client.sin_addr, host, NI_MAXHOST);
        cout << host << "connected on " << ntohs(client.sin_port) << endl;
    }
    // While receiving display message, echo message
    char buf[4096];
    while (true){
        // Clear the buffer
        memset(buf, 0, 4096);
        // Wait for a message
        int bytesRecv = recv(clientSocket, buf, 4096, 0);
        if (bytesRecv == -1)
        {
            cerr << "There was a connection issue" << endl;
            break;
        }
        if (bytesRecv == 0)
        {
            cout << " The client disconnected" << endl;
            break;
        }
        // Display message
        cout << "Received: " << string(buf, 0, bytesRecv) << endl;
        string numbers;
        string sum;
        tie(numbers, sum) = create_message(string(buf, 0, bytesRecv));



        // Resend message
        string n_char  = "\n";
        send(clientSocket, numbers.c_str(), numbers.size()+1, 0);
        send (clientSocket, n_char.c_str(), n_char.size()+1, 0);
        send(clientSocket, sum.c_str(), sum.size()+1, 0);
    }
    // Close socket
    close(clientSocket);

    return 0;
}
