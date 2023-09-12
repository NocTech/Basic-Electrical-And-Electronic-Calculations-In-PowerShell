# Basic Electrical and Electronic Calculations in PowerShell

# Define some constants
$pi = [Math]::PI
$e = [Math]::E

# Functions for common calculations

# Ohm's Law: Calculate voltage (V) using current (I) and resistance (R)
function CalculateVoltage {
    param (
        [double]$current,
        [double]$resistance
    )
    $voltage = $current * $resistance
    return $voltage
}

# Ohm's Law: Calculate current (I) using voltage (V) and resistance (R)
function CalculateCurrent {
    param (
        [double]$voltage,
        [double]$resistance
    )
    $current = $voltage / $resistance
    return $current
}

# Power formula: Calculate power (P) using voltage (V) and current (I)
function CalculatePower {
    param (
        [double]$voltage,
        [double]$current
    )
    $power = $voltage * $current
    return $power
}

# Capacitance formula: Calculate capacitance (C) using charge (Q) and voltage (V)
function CalculateCapacitance {
    param (
        [double]$charge,
        [double]$voltage
    )
    $capacitance = $charge / $voltage
    return $capacitance
}

# Inductance formula: Calculate inductance (L) using self-induced voltage (V) and rate of change of current (di/dt)
function CalculateInductance {
    param (
        [double]$voltage,
        [double]$rateOfChange
    )
    $inductance = $voltage / $rateOfChange
    return $inductance
}

# Resonant frequency formula: Calculate resonant frequency (f) using inductance (L) and capacitance (C)
function CalculateResonantFrequency {
    param (
        [double]$inductance,
        [double]$capacitance
    )
    $frequency = 1 / (2 * $pi * [Math]::Sqrt($inductance * $capacitance))
    return $frequency
}

# Usage examples

# Calculate voltage with Ohm's Law
$calculatedVoltage = CalculateVoltage -current 2 -resistance 4
Write-Host "Voltage (V) = $calculatedVoltage Volts"

# Calculate power
$calculatedPower = CalculatePower -voltage 12 -current 3
Write-Host "Power (P) = $calculatedPower Watts"

# Calculate resonant frequency
$calculatedFrequency = CalculateResonantFrequency -inductance 0.1 -capacitance 0.001
Write-Host "Resonant Frequency (f) = $calculatedFrequency Hz"

# End of the script
