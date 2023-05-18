// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InomeModel _$$_InomeModelFromJson(Map<String, dynamic> json) =>
    _$_InomeModel(
      id: json['id'] as String,
      title: json['title'] as String,
      amount: json['amount'] as int,
      timestamp: const TimestampConverter().fromJson(json['timestamp'] as int),
      status: json['status'] as bool? ?? true,
    );

Map<String, dynamic> _$$_InomeModelToJson(_$_InomeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
      'status': instance.status,
    };
