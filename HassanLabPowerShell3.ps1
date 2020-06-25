$x = "Larry", "Moe", "Hassan"

switch ($x)
{
    "Larry" {echo "It's Larry"; continue}
    "Curly" {echo "It's Curly"; continue}
    "Moe" {echo "It's Moe"; continue}
    "Larry" {echo "It's Larry again"; continue}
    "Phil" {echo "It's Phil"; continue}
    default {echo "It's something else"; continue}
}