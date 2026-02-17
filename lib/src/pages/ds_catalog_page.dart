import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsCatalogPage extends StatelessWidget {
  final String title;
  final List<CatalogItem> items;
  final Function(CatalogItem) onItemTap;

  const DsCatalogPage({
    super.key,
    required this.title,
    required this.items,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      body: Column(
        children: [
          DsAppHeader(title: title),
          const SizedBox(height: DsSpacing.md),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: DsSpacing.sm),
                  child: DsCard(
                    child: InkWell(
                      onTap: () => onItemTap(item),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: DSText(item.title, style: DsTypography.body),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: DsColors.textSecondary,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CatalogItem {
  final String title;

  CatalogItem({required this.title});
}
