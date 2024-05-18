//
// zzekak_client all rights reserved
//
// @author WongueShin
// @email won7963kr@gmail.com
// @since 2023-12-16
//

import 'package:core/model/identifier/identifier.dart';
import 'package:core/model/user/user_model.dart';

abstract interface class TokenProvider {
  /// [identifier] 에 해당하는 [AuthenticationInfo] 를 반환합니다.
  Future<AuthenticationInfo> findUserByIdentifier(Identifier identifier);

  /// 현재 로그인한 [AuthenticationInfo] 를 반환합니다.
  Future<AuthenticationInfo> findMe();

  /// [user] 를 저장소에 저장합니다.
  Future<AuthenticationInfo> save(AuthenticationInfo user);
}
