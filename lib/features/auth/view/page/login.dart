import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metrdev/features/auth/bloc/auth_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E2033),
      body: BlocProvider(
        create: (_) => AuthBloc(context.read()),
        child: SafeArea(
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.loginState == LoginState.success) {
                Navigator.pushNamed(context, '/home');
              }
            },
            child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color(0xffFFFFFF),
                            size: 20,
                          ),
                          Text(
                            'Log In',
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          // ElevatedButton(
                          //   onPressed: () {
                          //     print(state.email);
                          //
                          //     print(state.password);
                          //   },
                          //   child: Text('j'),
                          // ),
                          SizedBox()
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 304,
                        width: 335,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color(0xff213345)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Email Address',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 48,
                              child: TextFormField(
                                onChanged: (e) {
                                  context
                                      .read<AuthBloc>()
                                      .add(AuthEventOnEmailChange(email: e));
                                },
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.emailAddress,
                                style:
                                    const TextStyle(color: Color(0xff8B8B8B)),
                                decoration: InputDecoration(
                                  fillColor: const Color(0xff0E2033),
                                  filled: true,
                                  hintText: 'you@example.com',
                                  suffix: const Text('0'),
                                  hintStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8B8B8B)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            const Text(
                              'password',
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 48,
                              child: TextFormField(
                                style:
                                    const TextStyle(color: Color(0xff8B8B8B)),
                                onChanged: (e) {
                                  context.read<AuthBloc>().add(
                                      AuthEventOnPasswordChange(password: e));
                                },
                                decoration: InputDecoration(
                                  fillColor: const Color(0xff0E2033),
                                  filled: true,
                                  hintText: 'Not less than 8 characters',
                                  hintStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff8B8B8B)),
                                  suffixIcon:
                                      Image.asset('asset/image/eye-off.png'),
                                  suffix: const Text('0'),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            SizedBox(
                                height: 56,
                                width: 295,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffEAB96B)),
                                    onPressed: () {
                                      context
                                          .read<AuthBloc>()
                                          .add(AuthEventLogin());
                                    },
                                    child: const Text(
                                      'Log In',
                                      style: TextStyle(
                                          color: Color(0xff131313),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ))),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Divider(
                              color: Color(0xff213345),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'OR',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(child: Divider(color: Color(0xff213345))),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('asset/image/google.png'),
                          const SizedBox(
                            width: 30,
                          ),
                          Image.asset('asset/image/apple.png')
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                                color: Color(0xff8B8B8B),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          Text(
                            ' Sign up',
                            style: TextStyle(
                                color: Color(0xffEAB96B),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
