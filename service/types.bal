import ballerina/http;

public type Reservation record {|
    readonly int id;
    Room room;
    string checkinDate;
    string checkoutDate;
    User user;
|};

public type Room record {|
    readonly int number;
    RoomType 'type;
|};

public type RoomType record {
    int id;
    string name;
    int guestCapacity;
    decimal price;
};

public type User record {
    string id;
    string name;
    string email;
    string mobileNumber;
};

type ReservationRequest record {
    string checkinDate;
    string checkoutDate;
    int rate;
    User user;
    string roomType;
};

type NewRecord record {
    string checkinDate;
    string checkoutDate;
};

