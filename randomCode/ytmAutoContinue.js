const secondsToVerify = 5;
setInterval(() => {
    let buttonQuery = document.getElementsByClassName('yt-spec-button-shape-next yt-spec-button-shape-next--text yt-spec-button-shape-next--call-to-action yt-spec-button-shape-next--size-m yt-spec-button-shape-next--enable-backdrop-filter-experiment');
    buttonQuery.length == 1 ? buttonQuery[0].click() : null;
}, secondsToVerify * 1000);