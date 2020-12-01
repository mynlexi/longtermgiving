const element = document.querySelector('#currentAssetPrice')
let totalPrice;
if (element) { 
    const currentAssetPrice = element.innerHTML;
    const chosenAssetQuantity = document.querySelector('#donation_quantity');
    totalPrice = chosenAssetQuantity.addEventListener('change', () => {
        let total = chosenAssetQuantity.value * currentAssetPrice
        document.getElementById('totalerPrice').innerHTML = total + '€'
    });
}
export {totalPrice};