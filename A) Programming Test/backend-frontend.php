<?php
header('Content-Type: application/json');
$data = [];

// $n = intval($_POST['n'] ?? 0);

// Hardcode input for testing purpose
$n = intval(52 ?? 0);

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

            // Generate a card and check for [LF]
            if (!empty($cards)) {
                $newCard = $cards[0] . $card;
                if (strpos($newCard, "[LF]") !== false) {
                    // If [LF] is found, generate a new card
                    $j--;
                } else {
                    $hand[] = $newCard;
                    array_shift($cards);
                }
            } else {
                break;  // Break if the cards array is empty
            }
        }
        $result[] = implode(', ', $hand);
    }

    echo json_encode(["cards" => $result]);
}
?>
