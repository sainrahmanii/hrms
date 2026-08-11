
                import '../../domain/repositories/main_repository.dart';

                class MainRepositoryImpl implements MainRepository {
                    const MainRepositoryImpl();

                    Future<T> _run<T>(Future<T> Function() function) async {
                        try {
                            return await function();
                        } catch (e) {
                            throw e;
                        }
                    }
                }