let x = window.location.href.split("=")[1];
console.log("dasfsdfasd")
$.get(window.location.origin + "/api/v1/news/search?value="+x, function(data, status){
    
    let res = JSON.stringify(data);
    let theData = JSON.parse(res);

    // USE THE DATA
    if(theData.length == 0)
        {
            document.querySelector(".noresult-message").style.display = "block";
            return;
        }
        

    const mainContainer = document.querySelector(".main-container");
    let productEls = "";
    const url = window.location.origin;

    for(let i = 0; i < theData.length; i++)
    {
        productEls += `
            <a style="display: block; text-decoration: none;" href="${url + "/detail/" + theData[i].id}" class="news">
                <div class="news-left-side">
                    <img src="${theData[i].image}" alt="">
                </div>
                <div class="news-right-side">
                    <h1>${theData.title}</h1>
                    <h2>${theData.content.substring(0, 50)}</h2>
                </div>
            </a>
        `;
    }
    
    mainContainer.innerHTML = productEls;
    
});