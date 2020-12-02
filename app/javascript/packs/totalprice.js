const updateTotalPrice = () => {
    const element = document.querySelector('#currentAssetPrice')
    if (element) { 
        const currentAssetPrice = element.innerHTML;
        const chosenAssetQuantity = document.querySelector('#donation_quantity');
        if (chosenAssetQuantity) {
            chosenAssetQuantity.addEventListener('change', () => {
                let total = chosenAssetQuantity.value * currentAssetPrice
                document.getElementById('totalerPrice').innerHTML = total + ',00€'
            });
        }
    }
}
export {updateTotalPrice};