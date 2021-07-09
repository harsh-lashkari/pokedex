import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/application/auth/auth_bloc.dart';
import 'package:pokedex/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pokedex/presentation/screens/home/home_page.dart';
import 'package:pokedex/shared/color_constants.dart';
import 'package:pokedex/shared/sizeconfig.dart';
import 'package:pokedex/shared/text_style_constants.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      // listenWhen: (p,c)=>p.,
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'CANCELLED',
                  serverError: (_) => 'SERVER ERROR',
                  emailAlreadyInUse: (_) => 'EMAIL ALREADY IN USE',
                  invalidEmailAndPasswordCombination: (_) =>
                      'INVALID EMAIL AND PASSWORD COMBINATION',
                ),
              ).show(context);
            },
            (_) {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) {
                return HomePage();
              }), (route) => false);

              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          // ignore: deprecated_member_use
          autovalidate: state.showErrorMessages,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 15,
                  right: SizeConfig.safeBlockHorizontal * 15,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.quicksand(
                    textStyle: kFormFieldTextStyle,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      FeatherIcons.mail,
                      color: Colors.white,
                    ),
                    labelText: 'Email Address',
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailInput(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 15,
                  right: SizeConfig.safeBlockHorizontal * 15,
                ),
                child: TextFormField(
                  style: GoogleFonts.quicksand(
                    textStyle: kFormFieldTextStyle,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      FeatherIcons.lock,
                      color: Colors.white,
                    ),
                    // suffixIcon: Icon(
                    //   FeatherIcons.eye,
                    //   color: Colors.white,
                    // ),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  autocorrect: false,
                  onChanged: (value) {
                    context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordInput(value));
                  },
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
              ),
              if (state.isSubmitting) ...[
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 25,
                ),
                const LinearProgressIndicator(
                  backgroundColor: kAccentColor,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ]
            ],
          ),
        );
      },
    );
  }
}
