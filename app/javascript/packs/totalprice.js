const updateTotalPrice = () => {
    const element = document.querySelector('#currentAssetPrice')
    if (element) { 
        const currentAssetPrice = element.innerHTML;
        const chosenAssetQuantity = document.querySelector('#donation_quantity');
        if (chosenAssetQuantity) {
            chosenAssetQuantity.addEventListener('change', () => {
                let total = chosenAssetQuantity.value * currentAssetPrice
                const price = Math.round((total + Number.EPSILON) * 100) / 100
                document.getElementById('totalerPrice').innerHTML = `${price.toLocaleString("de-DE",  { style: 'currency', currency: 'EUR' })}`
                 
            });
        }
    }
}
export {updateTotalPrice};