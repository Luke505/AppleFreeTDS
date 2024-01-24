# Change Log - FreeTDS v1.4.10

## Features

- Added support for configuring the encryption level when communicating with the server using the `DBSETENCRYPTION` parameter in the `dbsetlname` function.
- Introduced the `dbsqlexecparams` function, enabling users to send queries and query parameters with a single function call. Also, added the `TDSPARAMINFO` model for defining query parameters.

## Changes

- Disabled the check for the `clock_gettime` function in the `config_h.vms` file.
- Disabled the check for the import file `com_err.h` in the `configure.ac` file.
- Disabled the check for the `BIO_get_data` function in the `m4/check_openssl.m4` and `vms/config_h.vms` files.
- Disabled the check for the `RSA_get0_key` function in the `m4/check_openssl.m4` and `vms/config_h.vms` files.
- Disabled the check for the `ASN1_STRING_get0_data` function in the `m4/check_openssl.m4` file.
- Disabled the evaluation for the `unicharsize` in the `src/tds/login.c` file.

# Change Log - FreeTDS v1.4.6

## Features

- Added support for configuring the encryption level when communicating with the server using the `DBSETENCRYPTION` parameter in the `dbsetlname` function.
- Introduced the `dbsqlexecparams` function, enabling users to send queries and query parameters with a single function call. Also, added the `TDSPARAMINFO` model for defining query parameters.

## Changes

- Disabled the check for the `clock_gettime` function in the `config_h.vms` file.
- Disabled the check for the import file `com_err.h` in the `configure.ac` file.
- Disabled the check for the `BIO_get_data` function in the `m4/check_openssl.m4` and `vms/config_h.vms` files.
- Disabled the check for the `RSA_get0_key` function in the `m4/check_openssl.m4` and `vms/config_h.vms` files.
- Disabled the check for the `ASN1_STRING_get0_data` function in the `m4/check_openssl.m4` file.
