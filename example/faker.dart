library faker.example;

import 'package:faker/faker.dart';

void main() {
  // Generate some different types of data.
  print(faker.address.country());
  print(faker.company.name());
  print(faker.currency.code());
  print(faker.internet.ipv4Address());
  print(faker.job.title());
  print(faker.person.firstName());
  print(faker.sport.name());

  // Generate a random amount of IP v4 addresses (max 10).
  print(random.amount((_) => faker.internet.ipv4Address(), 10));

  // Generate random boolean.
  print(random.boolean());

  // Generate random decimal.
  print(random.decimal());

  // Generate random DateTime, between the years 2000 and 2020
  print(faker.date.dateTime(minYear: 2000, maxYear: 2020));

  // Generate random User Agent, with osName iOS
  print(faker.internet.userAgent(osName: 'iOS'));

  // Generate localized Farsi lorem text
  var fakerFa = Faker(FakerDataProviderFa());
  print(fakerFa.lorem.word());
  print(fakerFa.lorem.sentence());
  print(fakerFa.lorem.words(10).join(' '));
  print(fakerFa.lorem.sentences(3).join(' '));

}
