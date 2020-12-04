import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["GLD", "SPY", "QQQ", "AAPL", "TSLA", "CORN", "VGK", "VEA", "YOLO", "NEL.OL"],
    typeSpeed: 200,
    loop: true,
  });
}

export { loadDynamicBannerText };