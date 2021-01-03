from faker import Faker
fake = Faker('ja_JP')

# str型の住所が出力
print(fake.address())