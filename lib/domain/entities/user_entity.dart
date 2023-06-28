import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? name;
  final String? email;
  final String? uid;

  const UserEntity({
    this.name,
    this.email,
    this.uid,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        email,
        uid,
      ];
}
