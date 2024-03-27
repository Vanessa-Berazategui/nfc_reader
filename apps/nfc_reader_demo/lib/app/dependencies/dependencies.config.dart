// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:demo/app/app.dart' as _i3;
import 'package:demo/app/dependencies/app_blocs_module.dart' as _i15;
import 'package:demo/app/dependencies/app_datasources_module.dart' as _i12;
import 'package:demo/app/dependencies/app_repositories_module.dart' as _i13;
import 'package:demo/app/dependencies/app_theme_module.dart' as _i11;
import 'package:demo/app/dependencies/app_usecases_module.dart' as _i14;
import 'package:demo/app/environment/app_environment_development.dart' as _i5;
import 'package:demo/app/environment/app_environment_production.dart' as _i6;
import 'package:demo/app/environment/app_environment_staging.dart' as _i4;
import 'package:demo/app/theme/material_theme.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nfc_reader_data/nfc_reader_data.dart' as _i8;
import 'package:nfc_reader_domain/nfc_reader_domain.dart' as _i9;
import 'package:nfc_reader_presentation/nfc_reader_presentation.dart' as _i10;

const String _stg = 'stg';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appThemeModule = _$AppThemeModule();
    final appDataSourcesModule = _$AppDataSourcesModule();
    final appRepositoriesModule = _$AppRepositoriesModule();
    final appUseCasesModule = _$AppUseCasesModule();
    final appBlocsModule = _$AppBlocsModule();
    gh.lazySingleton<_i3.AppEnvironment>(
      () => _i4.AppEnvironmentStaging(),
      registerFor: {_stg},
    );
    gh.lazySingleton<_i3.AppEnvironment>(
      () => _i5.AppEnvironmentDevelopment(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i3.AppEnvironment>(
      () => _i6.AppEnvironmentProduction(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i7.MaterialTheme>(() => appThemeModule.materialTheme());
    gh.lazySingleton<_i8.NFCDataSource>(
        () => appDataSourcesModule.nfcDataSource());
    gh.lazySingleton<_i9.NFCRepository>(
        () => appRepositoriesModule.nfcRepository(gh<_i8.NFCDataSource>()));
    gh.lazySingleton<_i9.StartReaderUseCase>(
        () => appUseCasesModule.startReaderUseCase(gh<_i9.NFCRepository>()));
    gh.lazySingleton<_i9.StopReaderUseCase>(
        () => appUseCasesModule.stopReaderUseCase(gh<_i9.NFCRepository>()));
    gh.lazySingleton<_i9.GetNFCSupportUseCase>(
        () => appUseCasesModule.getNFSupportUseCase(gh<_i9.NFCRepository>()));
    gh.lazySingleton<_i9.GetTagReaderStream>(
        () => appUseCasesModule.getTagReaderUseCase(gh<_i9.NFCRepository>()));
    gh.factory<_i10.HomeBloc>(
        () => appBlocsModule.homeBloc(gh<_i9.GetNFCSupportUseCase>()));
    gh.factory<_i10.TagReaderBloc>(() => appBlocsModule.tagReaderBloc(
          gh<_i9.GetTagReaderStream>(),
          gh<_i9.StartReaderUseCase>(),
          gh<_i9.StopReaderUseCase>(),
        ));
    return this;
  }
}

class _$AppThemeModule extends _i11.AppThemeModule {}

class _$AppDataSourcesModule extends _i12.AppDataSourcesModule {}

class _$AppRepositoriesModule extends _i13.AppRepositoriesModule {}

class _$AppUseCasesModule extends _i14.AppUseCasesModule {}

class _$AppBlocsModule extends _i15.AppBlocsModule {}
