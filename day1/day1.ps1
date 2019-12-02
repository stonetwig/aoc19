$input = Get-Content "day1_input.txt"
$result = 0
foreach ($n in $input) {
    [decimal] $new = [math]::Floor($n / 3) - 2
    $result += $new
}

"Part 1: " + $result

$totalFuel = 0

foreach ($n in $input) {
    while ($n -gt 0) {
        [decimal] $n = [math]::Floor($n / 3) - 2
        if ($n -gt 0) {
            $totalFuel += $n
        }
    }
}

"Part 2: " + $totalFuel