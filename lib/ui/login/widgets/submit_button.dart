part of 'login_form_widget.dart';

class _SubmitButton extends StatelessWidget {
  final bool isActive;
  final String email;
  final String password;
  const _SubmitButton({
    required this.isActive,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginPageBloc>();

    return BlocBuilder<LoginPageBloc, LoginPageState>(
      buildWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        return ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: isActive
                ? () {
                    bloc.add(LoginPageEvent.submit(email, password));
                  }
                : null,
            child: state.maybeWhen(
              authenticating: () {
                return const SizedBox(
                  height: 32,
                  width: 32,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              },
              orElse: () {
                return const Text(
                  'Login',
                  style: KTextStyles.standartButton,
                );
              },
            ));
      },
    );
  }
}
