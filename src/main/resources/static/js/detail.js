let x = window.location.href.split("/");
x = x[x.length-1];

$.get(window.location.origin + "/api/v1/news/get?id="+x, function(data, status){
    
    let res = JSON.stringify(data);
    let theData = JSON.parse(res);

    // USE THE DATA
    const mainContainer = document.querySelector(".main-container");
    let productEl = `
        <div class="main-container-title">
            <h1>${theData.title}</h1>
            <h4 id="author"></h4>
        </div>

        <div class="main-container-main-content">
            <img src="${theData.image}" alt="">
            <p>${theData.content}</p>
        </div>
        
        `;
        mainContainer.innerHTML = productEl;
    
});

$.get(window.location.origin + "/api/v1/news/getAuthorFromNewsId?id="+x, function(data, status){
    
    let res = JSON.stringify(data);
    let theData = JSON.parse(res);

    // USE THE DATA
    const authorContainer = document.getElementById("author")
    authorContainer.textContent = theData.name;
});


$.get(window.location.origin + "/api/v1/news/search?value=highlight", function(data, status){
    
    let res = JSON.stringify(data);
    let theData = JSON.parse(res);

    // USE THE DATA
    const container = document.querySelector(".main-suggested")
    const url = window.location.origin;
    console.log(url);
    let newsEls = "";
    for(let i = 0; i < 4; i++)
        {
            newsEls += `
            <a style="display: block; text-decoration: none;" href="${url + "/detail/" + theData[i].id}" class="news-big-container">
                <img src="${theData[i].image}" alt="">
                <div class="news-big-container-text">
                    <h1>${theData[i].title}</h1>
                    
                </div>
            </a>
            `;
        }
    container.innerHTML = newsEls;


});
