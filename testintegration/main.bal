import ballerina/ftp;
import ballerina/http;
import ballerinax/wso2.controlplane as _;

listener http:Listener storeListner = new (port = 9091);

service /store on storeListner {

    resource function get orders() returns error|json {
        do {
            OrderItem orderItem;
            orderItem = {"name": "Apple", "quantity": 10, "unitPrice": 12};
            return orderItem;

        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}

listener http:Listener billing = new (port = billingport);

service /billing on billing {
    resource function get greeting() returns error|json|http:InternalServerError {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}

listener ftp:Listener testfile = new ();

service ftp:Service on testfile {
    remote function onFileChange(ftp:WatchEvent & readonly event, ftp:Caller caller) returns error? {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
