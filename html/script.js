window.addEventListener('DOMContentLoaded', (event) => {
    window.addEventListener('message', function(event) {
        if (event.data.type === 'updateMoneyDisplay') {
            updateMoneyAndBank(event.data.money, event.data.bank);
        }
    });

    function updateMoneyAndBank(money, bank) {
        document.getElementById('moneyAmount').textContent = '$' + money;
        document.getElementById('bankAmount').textContent = '$' + bank;
    }
});
