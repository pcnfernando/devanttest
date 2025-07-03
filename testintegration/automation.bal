import ballerina/log;

public function main() returns error? {
    do {
        int intResult = add(12, 20);
        log:printInfo("Result: " + intResult.toString());
       
    } on fail error e {
        log:printError("Error occurred", 'error = e);
        return e;
    }
}
