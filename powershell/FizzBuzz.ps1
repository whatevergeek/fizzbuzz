function FizzBuzz($n, $fizz=$false, $buzz=$false, $fizzbuzz=$false) {
    $result = ""

    for ($i = 1; $i -le $n; $i++) {
        if ($fizzbuzz -and ($i % 3 -eq 0) -and ($i % 5 -eq 0)) {
            $result += " FizzBuzz";
        }
        elseif ($fizz -and $i % 3 -eq 0) {
            $result += " Fizz";
        }
        elseif ($buzz -and $i % 5 -eq 0) {
            $result += " Buzz";
        }
        else {
            $result += " $i";
        }
    }

    return $result.Trim();
}