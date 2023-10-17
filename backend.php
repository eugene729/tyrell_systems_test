<?php
header('Content-Type: application/json');
$data = [];

$n = intval($_POST['n'] ?? 0);

if ($n <= 0 || $n > 53) {
    echo json_encode(["error" => "Input value does not exist or value is invalid"]);
} else {
    $cards = ['S', 'H', 'D', 'C'];
    $result = [];

    for ($i = 1; $i <= $n; $i++) {
        $hand = [];
        shuffle($cards);
        for ($j = 1; $j <= 13; $j++) {
            $card = $j < 11 ? $j : ($j == 11 ? 'X' : ($j == 12 ? 'J' : 'Q'));
            $hand[] = $cards[0] . $card;
            array_shift($cards);
        }
        $result[] = implode(', ', $hand);
    }

    echo json_encode(["cards" => $result]);
}
?>
