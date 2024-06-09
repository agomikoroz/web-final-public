const inputBar = document.getElementById("search");

const searchBtn = document.querySelector(".search-btn");

searchBtn.addEventListener("click", () => {
    const baseUrl = window.location.origin;
    const newUrl = baseUrl + "/search?value="+inputBar.value;
    window.location.href = newUrl;
})

const logo = document.querySelector(".logo")

logo.addEventListener("click", () => {
    window.location.href = window.location.origin;
})