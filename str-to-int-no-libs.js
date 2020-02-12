function strToInt(number) {
    let sum = 0;

    number.split("").forEach((digit, index) => {
        sum += digit * expand(number.length-index);
    });

    return sum;
}

function expand(cardinality) {
    return Math.pow(10,cardinality-1);
}