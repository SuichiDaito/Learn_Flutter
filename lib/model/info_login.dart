import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class InfoLogin {
  final int id;
  final int userCode;
  final int typeCd;
  final String email;
  final String name;
  final String phoneNumber;
  final int organizationId;
  final int branchId;
  final int statusCd;
  final String notes;
  final int signInCount;
  final String referralCode;
  final String lastSignIn;
  final int withdrawalReason;
  final String withdrawalCustomReason;
  final int editStatus;
  final int invalidLoginCount;
  final int lockUserAt;
  final int passCode;
  final String token;
  final String customerKey;
  final bool newAbUser;
  final int loginTypeCd;

  InfoLogin({
    required this.id,
    required this.userCode,
    required this.typeCd,
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.organizationId,
    required this.branchId,
    required this.statusCd,
    required this.notes,
    required this.signInCount,
    required this.referralCode,
    required this.lastSignIn,
    required this.withdrawalReason,
    required this.withdrawalCustomReason,
    required this.editStatus,
    required this.invalidLoginCount,
    required this.lockUserAt,
    required this.passCode,
    required this.token,
    required this.customerKey,
    required this.newAbUser,
    required this.loginTypeCd,
  });
  factory InfoLogin.fromJson(Map<String, dynamic> json) {
    return InfoLogin(
      id: json['id'],
      userCode: json['user_code'],
      typeCd: json['type_cd'],
      email: json['email'],
      name: json['name'],
      phoneNumber: json['phone_number'],
      organizationId: json['organization_id'],
      branchId: json['branch_id'],
      statusCd: json['status_cd'],
      notes: json['notes'],
      signInCount: json['sign_in_count'],
      referralCode: json['referral_code'],
      lastSignIn: json['last_sign_in'],
      withdrawalReason: json['withdrawal_reason'],
      withdrawalCustomReason: json['withdrawal_custom_reason'],
      editStatus: json['edit_status'],
      invalidLoginCount: json['invalid_login_count'],
      lockUserAt: json['lock_user_at'],
      passCode: json['pass_code'],
      token: json['token'],
      customerKey: json['customer_key'],
      newAbUser: json['new_ab_user'],
      loginTypeCd: json['login_type_cd'],
    );
  }
}
