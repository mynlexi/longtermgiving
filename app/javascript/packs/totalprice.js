const currentAssetPrice = document.querySelector('#currentAssetPrice').innerHTML;
const chosenAssetQuantity = document.querySelector('#donation_quantity');
const totalPrice = chosenAssetQuantity.addEventListener('change', () => {
    let total = chosenAssetQuantity.value * currentAssetPrice
    document.getElementById('totalerPrice').innerHTML = total
});

export {totalPrice};