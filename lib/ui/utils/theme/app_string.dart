import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';

final appStringController = ChangeNotifierProvider((ref) => AppStrings());

class AppStrings extends ChangeNotifier {
  String skipKey ="skipKey".tr();
  String onBoardTitle1 ="onBoardTitle1".tr();
  String onBoardSubtitle1 ="onBoardSubtitle1".tr();
  String onBoardTitle2 ="onBoardTitle2".tr();
  String onBoardSubtitle2 ="onBoardSubtitle2".tr();
  String onBoardTitle3 ="onBoardTitle3".tr();
  String onBoardSubtitle3 ="onBoardSubtitle3".tr();
  String nextKey ="nextKey".tr();
  String signInKey ="signInKey".tr();
  String signUpKey ="signUpKey".tr();
  String welcomeComeKey ="welcomeComeKey".tr();
  String loginSubtitleKey ="loginSubtitleKey".tr();
  String emailAddressKey ="emailAddressKey".tr();
  String passwordKey ="passwordKey".tr();
  String rememberMeKey ="rememberMeKey".tr();
  String forgetPassKey ="forgetPassKey".tr();
  String doNotHaveAccountKey ="doNotHaveAccountKey".tr();
  String passwordRecoveryKey ="passwordRecoveryKey".tr();
  String recoveryPassSubtitle ="recoveryPassSubtitle".tr();
  String verificationCodeKey ="verificationCodeKey".tr();
  String verificationSubtitleKey ="verificationSubtitleKey".tr();
  String changeYourEmailKey ="changeYourEmailKey".tr();
  String resendKey ="resendKey".tr();
  String confirmKey ="confirmKey".tr();
  String setNewPassKey ="setNewPassKey".tr();
  String setNewPassSubtitle ="setNewPassSubtitle".tr();
  String enterNewPassKey ="enterNewPassKey".tr();
  String confirmPassKey ="confirmPassKey".tr();
  String changePassKey ="changePassKey".tr();
  String passChangedKey ="passChangedKey".tr();
  String passSucChangeSubtitleKey ="passSucChangeSubtitleKey".tr();
  String backToLoginKey ="backToLoginKey".tr();
  String letGetStartedKey ="letGetStartedKey".tr();
  String signUpSubtitleKey ="signUpSubtitleKey".tr();
  String iAgreeWithKey ="iAgreeWithKey".tr();
  String termsOfServiceKey ="termsOfServiceKey".tr();
  String privacyPolicyKey ="privacyPolicyKey".tr();
  String doYouHaveAccountKey ="doYouHaveAccountKey".tr();
  String otpVerificationKey ="otpVerificationKey".tr();
  String uploadImageKey ="uploadImageKey".tr();
  String fullName ="fullName".tr();
  String dateOfBirthKey ="dateOfBirthKey".tr();
  String phoneNumberKey ="phoneNumberKey".tr();
  String continueKey ="continueKey".tr();

  String searchKey = "searchKey".tr();
  String seeAllKey = "seeAllKey".tr();
  String specialOfferKey = "specialOfferKey".tr();
  String mostPopularKey = "mostPopularKey".tr();
  String offKey = "offKey".tr();
  String topCategoriesKey = "topCategoriesKey".tr();
  String newArrivalKey = "newArrivalKey".tr();
  String addKey = "addKey".tr();

  updateStrings() {

    skipKey ="skipKey".tr();
    onBoardTitle1 ="onBoardTitle1".tr();
    onBoardSubtitle1 ="onBoardSubtitle1".tr();
    onBoardTitle2 ="onBoardTitle2".tr();
    onBoardSubtitle2 ="onBoardSubtitle2".tr();
    onBoardTitle3 ="onBoardTitle3".tr();
    onBoardSubtitle3 ="onBoardSubtitle3".tr();
    nextKey ="nextKey".tr();
    signInKey ="signInKey".tr();
    signUpKey ="signUpKey".tr();
    welcomeComeKey ="welcomeComeKey".tr();
    loginSubtitleKey ="loginSubtitleKey".tr();
    emailAddressKey ="emailAddressKey".tr();
    passwordKey ="passwordKey".tr();
    rememberMeKey ="rememberMeKey".tr();
    forgetPassKey ="forgetPassKey".tr();
    doNotHaveAccountKey ="doNotHaveAccountKey".tr();
    passwordRecoveryKey ="passwordRecoveryKey".tr();
    recoveryPassSubtitle ="recoveryPassSubtitle".tr();
    verificationCodeKey ="VerificationCodeKey".tr();
    verificationSubtitleKey ="verificationSubtitleKey".tr();
    changeYourEmailKey ="changeYourEmailKey".tr();
    resendKey ="resendKey".tr();
    confirmKey ="confirmKey".tr();
    setNewPassKey ="setNewPassKey".tr();
    setNewPassSubtitle ="setNewPassSubtitle".tr();
    enterNewPassKey ="enterNewPassKey".tr();
    confirmPassKey ="confirmPassKey".tr();
    changePassKey ="changePassKey".tr();
    passChangedKey ="passChangedKey".tr();
    passSucChangeSubtitleKey ="passSucChangeSubtitleKey".tr();
    backToLoginKey ="backToLoginKey".tr();
    letGetStartedKey ="letGetStartedKey".tr();
    signUpSubtitleKey ="signUpSubtitleKey".tr();
    iAgreeWithKey ="iAgreeWithKey".tr();
    termsOfServiceKey ="termsOfServiceKey".tr();
    privacyPolicyKey ="privacyPolicyKey".tr();
    doYouHaveAccountKey ="doYouHaveAccountKey".tr();
    otpVerificationKey ="otpVerificationKey".tr();
    uploadImageKey ="uploadImageKey".tr();
    fullName ="fullName".tr();
    dateOfBirthKey ="dateOfBirthKey".tr();
    phoneNumberKey ="phoneNumberKey".tr();
    continueKey ="continueKey".tr();

    searchKey = "searchKey".tr();
    seeAllKey = "seeAllKey".tr();
    specialOfferKey = "specialOfferKey".tr();
    mostPopularKey = "mostPopularKey".tr();
    offKey = "offKey".tr();
    topCategoriesKey = "topCategoriesKey".tr();
    newArrivalKey = "newArrivalKey".tr();
    addKey = "addKey".tr();
  }

  updateLanguage(BuildContext context) async {
    if (context.locale == const Locale('en')) {
      await context.setLocale(
        const Locale('hi'),
      );
    } else {
      await context.setLocale(
        const Locale('en'),
      );
    }
    updateStrings();
    notifyListeners();
  }
}
