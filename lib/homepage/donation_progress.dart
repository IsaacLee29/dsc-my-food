class DonationProgress {
  final double _currentDonationAmount;
  final double _targetDonationAmount;

  DonationProgress(this._currentDonationAmount, this._targetDonationAmount);

  double getCurrentDonationAmount() {
    return this._currentDonationAmount;
  }

  double getTargetDonationAmount() {
    return this._targetDonationAmount;
  }

  static double getProgressAsPercentage(DonationProgress aDonationProgress) {
    return aDonationProgress.getCurrentDonationAmount() / aDonationProgress.getTargetDonationAmount();
  }
}