# Module stdgo.database.sql has compilation errors, please do not use:
```
[30;41m ERROR [0m stdgo/database/sql/driver/Driver.hx:546: characters 7-13

  546 | [2mclass [0m[1mDriver[0m[2m {[0m
      |       [31m^^^^^^[0m
      | Name Driver is already defined in this module

       58 | [2mtypedef [0m[1mDriver[0m[2m = stdgo._internal.database.sql.driver.Driver_Driver.Driver;[0m
          |         [31m^^^^^^[0m
          | Previous declaration here

[30;41m ERROR [0m stdgo/database/sql/Sql.hx:1814: characters 59-65

 1814 | [2m    static public function register(_name:String, _driver:[0m[1mDriver[0m[2m):Void {[0m
      |                                                           [31m^^^^^^[0m
      | Type not found : Driver


```

