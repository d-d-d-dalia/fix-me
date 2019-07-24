// $(document).ready(function(){
//     console.log("ya!")
// })

document.addEventListener("DOMContentLoaded", function(){
    console.log("hey!")
    bindClickHandlers()
})

const bindClickHandlers = () => {
    $('#all_puppies').on('click', e => {
        console.log("clicked!")
        e.preventDefault()

        fetch('/dogs.json')
            .then(res => res.json())
            .then(dogs => {
                console.log(dogs)
            })
    })
}