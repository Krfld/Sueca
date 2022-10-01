import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sueca/utilities/print.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = useState('');
    final textEditingController = useTextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Suekelson',
                style: TextStyle(fontSize: 32),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: TextField(
                  controller: textEditingController,
                  keyboardType: TextInputType.name,
                  maxLength: 12,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onChanged: (value) => name.value = print(value.trim()),
                  onSubmitted: (value) => textEditingController.text = textEditingController.text.trim(),
                ),
              ),
              if (MediaQuery.of(context).viewInsets.bottom == 0)
                name.value.isNotEmpty
                    ? OutlinedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(64)),
                          ),
                        ),
                        child: const Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: () {
                          textEditingController.text = textEditingController.text.trim();
                        },
                      )
                    : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
