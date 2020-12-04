import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["the FUTURE", "GLD", "SPY", "QQQ", "the FUTURE", "AAPL", "TSLA", "CORN", "VGK", "the FUTURE", "VEA", "YOLO", "NEL.OL"],
    typeSpeed: 200,
    loop: true,
  });
}

export { loadDynamicBannerText };