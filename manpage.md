% COFFEE(1)
% Benjamin Simmonds
% November 2021

# NAME

coffee - Control remote coffee machine

# SYNOPSIS

**coffee** [ **-h** | **-b** ] [ **-t type** ] _amount_

# DESCRIPTION

**coffee** queues a request to the remote coffee machine at the device /dev/cf0. The required amount argument specifies the number of cups, generally between 0 and 12 on ISO standard coffee machines.

# GENERAL OPTIONS

**-h**, **`--help`**
: Brew hot coffee. Cold is the default.

**-b**
: Burn coffee. Especially useful when executing coffee on behalf of your boss.

**-t type**

: Specify the type of coffee to brew, where type is one of columbian, regular, or decaf.

# FILES

**/fC/dev/cf0**

: The remote coffee machine device

# SEE ALSO

milk(5), sugar(5)

# BUGS

May require human intervention if coffee supply is exhausted.
