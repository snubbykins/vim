use std::error;
use std::fmt;

use std::io;

/// Error type for semantic engine module
#[derive(Debug)]
pub enum Error {
    IoError(io::Error)
}

impl error::Error for Error {
    fn description(&self) -> &str {
        match *self {
            Error::IoError(_) => "io::Error during engine operation"
        }
    }

    fn cause(&self) -> Option<&error::Error> {
        match *self {
            Error::IoError(ref err) => Some(err)
        }
    }
}

impl fmt::Display for Error {
    fn fmt(&self, fmt: &mut fmt::Formatter) -> fmt::Result {
        match *self {
            Error::IoError(ref e) => {
                write!(fmt, "io::Error({})", e)
            }
        }
    }
}

impl From<io::Error> for Error {
    fn from(err: io::Error) -> Error {
        Error::IoError(err)
    }
}

/// Result type for semantic engine module
pub type Result<T> = ::std::result::Result<T, Error>;
