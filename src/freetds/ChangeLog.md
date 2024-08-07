# Change Log - FreeTDS v1.4.22

## Features

- Added support for configuring the encryption level when communicating with the server using the `DBSETENCRYPTION` parameter in the `dbsetlname` function.
- Introduced the `dbsqlexecparams` function, allowing users to send queries and query parameters with a single function call. Additionally, added the `TDSPARAMINFO` model for defining query parameters.
- Introduced the `dbgetlasterror` function, enabling users to retrieve the last error. Additionally, added the `DBERROR` model.
- Updated the `default_err_handler` function to avoid crashing in case of an error; it now saves the error to a variable and sends an `INT_CANCEL`.
- Added the `default_msg_handler` function to collect errors into a variable.
- Deprecated the `tds_read_conf_file` function as this library no longer uses a configuration file.

## Changes

- Disabled the check for the `clock_gettime` function in the `vms/config_h.vms` file.
- Disabled the check for the import file `com_err.h` in the `configure.ac` file.
- Updated OpenSSL from 1.0.2u to 1.1.1w

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
