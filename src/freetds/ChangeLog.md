# Change Log - FreeTDS v1.4.6

## Features

- Added support for setting the encryption level for communication with the server on the `dbsetlname` function using the `DBSETENCRYPTION` parameter.

- Introduced the `dbsqlexecparams` function, allowing users to send queries and query parameters with a single function call. Also added the `TDSPARAMINFO` model for defining query parameters.

## Changes

- Disabled the `ENABLE_ODBC_MARS` option in the CMakeLists.txt file, switching it from `ON` to `OFF`.
