part of 'employee_form.dart';

class _CommentField extends StatelessWidget {
  const _CommentField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) {
        return previous.form.comment != current.form.comment;
      },
      builder: (context, state) {
        final bloc = context.read<EmployeeFormBloc>();

        return TextFormField(
          onChanged: (comment) {
            bloc.add(
              EmployeeFormEvent.commentChangedEvent(comment),
            );
          },
          initialValue: state.form.comment,
          minLines: 3,
          maxLines: 10,
          decoration: InputDecoration(
            labelText: 'Comment',
            errorText: state.form.commentValid || state.form.comment.isEmpty
                ? null
                : 'Invalid Comment',
            errorBorder: KBorderStyles.textFieldBorderBlack.copyWith(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            border: KBorderStyles.textFieldBorderBlack,
          ),
          keyboardType: TextInputType.multiline,
        );
      },
    );
  }
}
