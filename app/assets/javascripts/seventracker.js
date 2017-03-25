function SevenTracker(gameName) {
  this.game = gameName;
}

SevenTracker.prototype.track = function(eventName, eventProperties) {
  eventProperties.game = this.game;
  mixpanel.track(eventName, eventProperties);
  fbq('trackCustom', eventName, eventProperties);
};
