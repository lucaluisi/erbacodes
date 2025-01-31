import 'package:erba_coders/common/styles/spacing_styles.dart';
import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
                ),
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(backgroundColor: TColors.primary),
                  child: Text("Add files", style: Theme.of(context).textTheme.bodyMedium),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Set title
              Text("Title", style: Theme.of(context).textTheme.headlineLarge),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Title",
                ),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Set language
              Text("Language used",
                  style: Theme.of(context).textTheme.headlineLarge),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Language",
                ),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Set description
              Text("Description",
                  style: Theme.of(context).textTheme.headlineLarge),
              TextFormField(
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: "Description",
                  border: const OutlineInputBorder().copyWith(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey),
                      borderRadius:
                          BorderRadius.circular(TSizes.borderRadiusLg)),
                  enabledBorder: const OutlineInputBorder().copyWith(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey),
                      borderRadius:
                          BorderRadius.circular(TSizes.borderRadiusLg)),
                  focusedBorder: const OutlineInputBorder().copyWith(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.white),
                      borderRadius:
                          BorderRadius.circular(TSizes.borderRadiusLg)),
                  errorBorder: const OutlineInputBorder().copyWith(
                      borderSide: const BorderSide(width: 2, color: Colors.red),
                      borderRadius:
                          BorderRadius.circular(TSizes.borderRadiusLg)),
                  focusedErrorBorder: const OutlineInputBorder().copyWith(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.orange),
                      borderRadius:
                          BorderRadius.circular(TSizes.borderRadiusLg)),
                ),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Share button
              ElevatedButton(onPressed: (){}, child: Text("Publish"))
            ],
          ),
        ),
      ),
    );
  }
}
