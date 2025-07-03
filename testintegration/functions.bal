import ballerina/log;

# two nos 
# + a - first number to add
# + b - second number to add      
# + return- returns the sum of a and b

function add(int b, int a) returns int {

    int c = a + b;
    string stringResult = transform(c);
    log:printInfo(stringResult);
    return c;
}
