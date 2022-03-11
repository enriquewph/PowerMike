#ifndef NETWORK_ERROR_H
#define NETWORK_ERROR_H

#include <Arduino.h>

/**
 * @brief Clase sencilla para almacenar un solo numero entero, e interpretarlo como codigos de error.
 */
class NetworkError {
    typedef void (NetworkError::*bool_type)() const;
    void safeBoolHelper() const {}

   public:
    /**
     * @brief Coincidimos los primeros 5 con los errores que devuelve TwoWire::endTransmission
     *
     */
    enum Code {
        Ok = 0,
        Connecting,
        Wrong_Password,
        No_Ap_Found,
        Connect_Fail,
        No_Configuration_Found,
        Timeout
    };

    const char *c_str() const {
        switch (_code) {
            case Ok:
                return "Ok";
            case Connecting:
                return "Connecting";
            case Wrong_Password:
                return "Wrong_Password";
            case No_Ap_Found:
                return "No_Ap_Found";
            case Connect_Fail:
                return "Connect_Fail";
            case Timeout:
                return "Timeout";
            default:
                return "???";
        }
    }

    NetworkError() {}
    NetworkError(Code c)
        : _code(c) {}

    NetworkError(int c)
        : _code((Code)c) {}

    Code code() const {
        return _code;
    }

    // Compare with NetworkError
    friend bool operator==(const NetworkError &lhs,
        const NetworkError &rhs) {
        return lhs._code == rhs._code;
    }
    friend bool operator!=(const NetworkError &lhs,
        const NetworkError &rhs) {
        return lhs._code != rhs._code;
    }

    // Compare with Code
    friend bool operator==(const NetworkError &lhs, Code rhs) {
        return lhs._code == rhs;
    }
    friend bool operator==(Code lhs, const NetworkError &rhs) {
        return lhs == rhs._code;
    }
    friend bool operator!=(const NetworkError &lhs, Code rhs) {
        return lhs._code != rhs;
    }
    friend bool operator!=(Code lhs, const NetworkError &rhs) {
        return lhs != rhs._code;
    }

    // Behaves like a bool
    operator bool_type() const {
        return _code != Ok ? &NetworkError::safeBoolHelper : 0;
    }
    friend bool operator==(bool value, const NetworkError &err) {
        return static_cast<bool>(err) == value;
    }
    friend bool operator==(const NetworkError &err, bool value) {
        return static_cast<bool>(err) == value;
    }
    friend bool operator!=(bool value, const NetworkError &err) {
        return static_cast<bool>(err) != value;
    }
    friend bool operator!=(const NetworkError &err, bool value) {
        return static_cast<bool>(err) != value;
    }

   private:
    Code _code;
};

#endif