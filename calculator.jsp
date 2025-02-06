<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Futuristic Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #0d0d0d;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
            font-family: 'Orbitron', sans-serif;
        }
        .calculator {
            background: #1a1a1a;
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.6);
            max-width: 350px;
            text-align: center;
        }
        .display {
            font-size: 36px;
            background: #222;
            padding: 20px;
            border-radius: 10px;
            text-align: right;
            margin-bottom: 20px;
            border: none;
            color: cyan;
            width: 100%;
            box-shadow: inset 0 0 10px rgba(0, 255, 255, 0.3);
        }
        .btn-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 12px;
        }
        button {
            padding: 20px;
            font-size: 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: 0.3s;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 255, 255, 0.3);
        }
        .btn-number {
            background: #333;
            color: cyan;
        }
        .btn-number:hover {
            background: #444;
        }
        .btn-operator {
            background: #ff9900;
            color: black;
        }
        .btn-operator:hover {
            background: #e68a00;
        }
        .btn-clear {
            background: #ff3333;
            color: white;
        }
        .btn-clear:hover {
            background: #cc0000;
        }
        .btn-equal {
            background: #00cc66;
            color: white;
        }
        .btn-equal:hover {
            background: #00994d;
        }
    </style>
    <script>
        function appendValue(value) {
            document.getElementById("display").value += value;
        }
        function calculateResult() {
            try {
                document.getElementById("display").value = eval(document.getElementById("display").value);
            } catch (e) {
                alert("Invalid Expression");
                document.getElementById("display").value = "";
            }
        }
        function clearDisplay() {
            document.getElementById("display").value = "";
        }
    </script>
</head>
<body>
    <div class="calculator">
        <input type="text" id="display" class="display" readonly>
        <div class="btn-grid">
            <button class="btn-number" onclick="appendValue('7')">7</button>
            <button class="btn-number" onclick="appendValue('8')">8</button>
            <button class="btn-number" onclick="appendValue('9')">9</button>
            <button class="btn-operator" onclick="appendValue('/')">/</button>

            <button class="btn-number" onclick="appendValue('4')">4</button>
            <button class="btn-number" onclick="appendValue('5')">5</button>
            <button class="btn-number" onclick="appendValue('6')">6</button>
            <button class="btn-operator" onclick="appendValue('*')">*</button>

            <button class="btn-number" onclick="appendValue('1')">1</button>
            <button class="btn-number" onclick="appendValue('2')">2</button>
            <button class="btn-number" onclick="appendValue('3')">3</button>
            <button class="btn-operator" onclick="appendValue('-')">-</button>

            <button class="btn-number" onclick="appendValue('0')">0</button>
            <button class="btn-clear" onclick="clearDisplay()">C</button>
            <button class="btn-equal" onclick="calculateResult()">=</button>
            <button class="btn-operator" onclick="appendValue('+')">+</button>
        </div>
    </div>
</body>
</html>
