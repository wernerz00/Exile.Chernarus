_objects =
[
    //Your custom objects go here
];

{
    private ["_object"];

    _object = (_x select 0) createVehicleLocal [0,0,0];
    _object setDir (_x select 2);
    _object setPosATL (_x select 1);
    _object enableSimulation false; // :)
}
forEach _objects;
