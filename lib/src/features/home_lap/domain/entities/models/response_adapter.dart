import 'package:hive/hive.dart';
import 'package:pc/src/features/home_lap/domain/entities/models/product_model.dart';

@HiveType(typeId: 0)
class ProductResponseAdapter extends TypeAdapter<LapItemsModel> {
  @override
  final int typeId = 0;

  @override
  LapItemsModel read(BinaryReader reader) {
    final id = reader.read();
    final status = reader.readString();
    final category = reader.readString();
    final name = reader.readString();
    final price = reader.readDouble();
    final description = reader.readString();
    final image = reader.readString();
    final images = reader.readStringList();
    final company = reader.readString();
    final countInStock = reader.readInt();
    final sales = reader.readInt();

    return LapItemsModel(
      id: id,
      status: status,
      category: category,
      name: name,
      price: price,
      description: description,
      image: image,
      images: images,
      company: company,
      countInStock: countInStock,
      sales: sales,
    );
  }

  @override
  void write(BinaryWriter writer, LapItemsModel obj) {
    writer
      ..write(obj.id)
      ..writeString(obj.status)
      ..writeString(obj.category)
      ..writeString(obj.name)
      ..writeDouble(obj.price)
      ..writeString(obj.description)
      ..writeString(obj.image)
      ..writeStringList(obj.images)
      ..writeString(obj.company)
      ..writeInt(obj.countInStock)
      ..writeInt(obj.sales);
  }
}
