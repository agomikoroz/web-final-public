/*
                        <div class="news-small-container">
                            <div class="news-small-container-left">
                                <img src="" alt="">
                            </div>
                            <div class="news-small-container-right">
                                <h1>title</h1>
                                <h4>source</h4>
                            </div>
                        </div>

                    <div class="news-big-container">
                        <img src="" alt="">
                        <div class="news-big-container-text">
                            <h1>title</h1>
                            <h4>Source</h4>
                        </div>
                    </div>

*/


$.get(window.location.origin + "/api/v1/news/search?value=highlight", function(data, status){
    
    let res = JSON.stringify(data);
    let theData = JSON.parse(res);

    // USE THE DATA
    const downleft = document.querySelector(".highlight-downleft");
    const right = document.querySelector(".highlight-right");
    let downleftEl = "";
    let rightEl = "";

    for(let i = 0; i < theData.length; i++)
    {
        let el = `
            <a style="display: flex; text-decoration: none;" href="${window.location.origin + "/detail/"+theData[i].id}" class="news-small-container">
                <div class="news-small-container-left">
                    <img src="${theData[i].image}" alt="">
                </div>
                <div class="news-small-container-right">
                    <h1>${theData[i].title}</h1>
                </div>
            </a>
            
            `
        if(i < 4)
        {
            downleftEl += el
        }
        else 
        {
            rightEl += el
        }
    }

    downleft.innerHTML = downleftEl;
    right.innerHTML = rightEl;
    
});


$.get(window.location.origin + "/api/v1/news/search?value=", function(data, status){
    
    let res = JSON.stringify(data);
    let theData = JSON.parse(res);

    // USE THE DATA
    const container = document.querySelector(".news-section-news");
    let element = "";

    for(let i = 13; i < 19; i++)
    {
        if(i == 15)
            element += `<div class="news-section-small-news">` 
        else if( i == 18)
            element += `</div>`;
        
        if(i == 15 || i == 16 || i == 17)
        {
            element += `
                        <a style="display: flex; text-decoration: none;" href="${window.location.origin + "/detail/"+theData[i].id}" class="news-small-container">
                            <div class="news-small-container-left">
                                <img src="${theData[i].image}" alt="">
                            </div>
                            <div class="news-small-container-right">
                                <h1>${theData[i].title}</h1>
                            </div>
                        </a>
            `
        }
        else 
        {
            element += `
                    <a style="display: flex; text-decoration: none;" href="${window.location.origin + "/detail/"+theData[i].id}" class="news-big-container">
                        <img src="${theData[i].image}" alt="">
                        <div class="news-big-container-text">
                            <h1>${theData[i].title}</h1>
                        </div>
                    </a>
            `
        }
    }

    container.innerHTML = element;
    
});


$.get(window.location.origin + "/api/v1/news/search?value=", function(data, status){
    
    let res = JSON.stringify(data);
    let theData = JSON.parse(res);

    // USE THE DATA
    const container = document.querySelector(".sport-section-news");
    let element = "";
    
    for(let i = 19; i < 25; i++)
    {
        if(i == 21)
            element += `<div class="news-section-small-news">` 
        else if( i == 24)
            element += `</div>`;
        
        if(i == 21 || i == 22 || i == 23)
        {
            element += `
                        <a style="display: flex; text-decoration: none;" href="${window.location.origin + "/detail/"+theData[i].id}" class="news-small-container">
                            <div class="news-small-container-left">
                                <img src="${theData[i].image}" alt="">
                            </div>
                            <div class="news-small-container-right">
                                <h1>${theData[i].title}</h1>
                            </div>
                        </a>
            `
        }
        else 
        {
            element += `
                    <a style="display: flex; text-decoration: none;" href="${window.location.origin + "/detail/"+theData[i].id}" class="news-big-container">
                        <img src="${theData[i].image}" alt="">
                        <div class="news-big-container-text">
                            <h1>${theData[i].title}</h1>
                        </div>
                    </a>
            `
        }
    }

    container.innerHTML = element;
    
});