import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/features/register/bloc/register_bloc.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class RegisterConfirmConsent extends StatelessWidget {
  const RegisterConfirmConsent({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Expanded(
              flex: 5,
              child: SMMTextLabel.textField(
                text: Trans.current.register_phone,
                isStar: true,
                child: SMMTextFormField.normal(
                  isEnable: true,
                  hintText:
                      Trans.current.hint_text + Trans.current.register_phone,
                  validator: (v) {
                    if (v!.isEmpty == true) {
                      return Trans.current.validate_text +
                          Trans.current.register_phone;
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                flex: 2,
                child: SMMTextLabel.textField(
                  text: '',
                  child: SMMOutlinedButton.normal(
                    label: Trans.current.register_request_otp,
                    outlineColor: AppColors.primaryBrandMain,
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SMMTextLabel.textField(
          text: Trans.current.register_otp,
          isStar: true,
          child: SMMTextFormField.normal(
            isEnable: true,
            hintText: Trans.current.hint_text + Trans.current.register_otp,
            validator: (v) {
              if (v!.isEmpty == true) {
                return Trans.current.validate_text + Trans.current.register_otp;
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.primaryBrandVeryLight2),
          child: Text(
            '${Trans.current.register_ref_code}****',
            style:
                AppTextStyles.textSMRegular.copyWith(color: AppColors.orange),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 332,
          child: Scrollbar(
            thickness: 6,
            radius: const Radius.circular(6),
            thumbVisibility: true,
            trackVisibility: true,
            child: SingleChildScrollView(
              child: HtmlWidget(
                textStyle: AppTextStyles.textMDRegular,
                '<div style="width: 100%; height: 100%"><span style="color: #333333; font-size: 14px;  font-weight: 600; text-decoration: underline; line-height: 20px; word-wrap: break-word">เงื่อนไขการให้บริการสี่มุมเมืองออนไลน์</span><span style="color: #333333; font-size: 14px;  font-weight: 400; line-height: 20px; word-wrap: break-word">  </span><span style="color: #333333; font-size: 14px;  font-weight: 600; line-height: 20px; word-wrap: break-word">สำหรับผู้ซื้อ</span><span style="color: #333333; font-size: 14px;  font-weight: 400; line-height: 20px; word-wrap: break-word"> สี่มุมเมืองออนไลน์ คือแพลตฟอร์มที่เป็นเพียงช่องทางเชื่อมต่อระหว่าง ผู้ซื้อที่ต้องการซื้อสินค้า จากตลาดกลางค้าส่ง และ ผู้ขายที่เปิดแผงจริง ในตลาดสี่มุมเมือง ผู้ซื้อ จึงยินยอมและรับทราบถึงเงื่อนไขการใช้บริการ ดังนี้  </span><span style="color: #333333; font-size: 14px;  font-weight: 600; line-height: 20px; word-wrap: break-word">การเข้าใช้งานระบบ</span><span style="color: #333333; font-size: 14px;  font-weight: 400; line-height: 20px; word-wrap: break-word"> 1. ผู้ซื้อรับทราบในคุณภาพบรรจุภัณฑ์ของสินค้าที่ซื้อผ่านระบบสี่มุมเมือง ออนไลน์ว่าเป็นสินค้าที่ขายจริงในตลาดสี่มุมเมืองซื้อหน้าแผงแบบใดในการซื้อผ่านออนไลน์ก็จะได้รับสินค้าในรูปแบบเดียวกัน   2. ผู้ซื้อยอมรับในรายละเอียดต่าง ๆ ของสินค้าที่ผู้ขายเป็นผู้ระบุไว้ ก่อนนำสินค้าเพิ่มในตะกร้า กรณีที่ไม่แน่ใจในรายละเอียดที่แสดงในระบบ สามารถติดต่อเจ้าหน้าที่ Contact Center ได้ตลอด 24 ชั่วโมง ที่หมายเลข 02-023-9903 หรือ Line Official : @smmonline   3. เมื่อผู้ซื้อนำสินค้าเพิ่มในตะกร้าและไม่ได้กดชำระเงินภายใน 3 ชั่วโมง (นับจากสินค้าชิ้นแรกที่เลือกลงตะกร้า) ระบบจะทำการล้างสินค้าที่อยู่ใน ตะกร้าออก เนื่องจากราคาของสินค้าอาจมีการเปลี่ยนแปลง   4. เมื่อผู้ซื้อชำระค่าสินค้าผ่านระบบแล้ว ไม่สามารถยกเลิก เปลี่ยนแปลง แก้ไขได้ในทุกกรณี   5. ในกรณีที่ผู้ซื้อทำการตกลงเกี่ยวกับสินค้ากับผู้ขายโดยตรง โดยไม่แจ้ง ให้เจ้าหน้าที่ทราบสี่มุมเมืองออนไลน์จะยึดถือข้อมูลของสินค้าที่ซื้อผ่านระบบเท่านั้น    6. ผู้ซื้อรับทราบในส่วนของช่องทางการแจ้งข้อมูลจากระบบสี่มุมเมือง ออนไลน์ผ่านทาง Line Official : @smmonline   </span><span style="color: #333333; font-size: 14px;  font-weight: 600; line-height: 20px; word-wrap: break-word">การจัดส่งสินค้า :</span><span style="color: #333333; font-size: 14px;  font-weight: 400; line-height: 20px; word-wrap: break-word">  1.สินค้าที่จะทำการจัดส่งจะต้องซื้อผ่านระบบสี่มุมเมืองออนไลน์และจะจัด ส่ง ตามที่อยู่ที่ระบุไว้ในระบบโดยจะทำการขนส่งทางบกเท่านั้น   2. สี่มุมเมืองออนไลน์บริการจัดส่งสินค้าถึงหน้าร้านหรือหน้าบ้าน แต่ไม่มีนโยบายให้เจ้าหน้าที่เข้าถึงพื้นที่ส่วนตัว เพื่อความปลอดภัยและป้องกันทรัพย์สินของผู้ซื้อ  3. สำหรับการจัดส่งสินค้าในพื้นที่อาคารสำนักงาน ห้างสรรพสินค้า อพาร์ทเม้นท์ คอนโดมิเนียมหรืออาคารอื่นใดที่มีจุดรับสินค้าของอาคาร หรือนิติบุคคลของอาคาร เจ้าหน้าที่ขนส่งสินค้าจะดำเนินการจัดส่งสินค้า  ณ จุดรับสินค้าของอาคาร หรือนิติบุคคลของอาคารเท่านั้น   4. กรณีที่เจ้าหน้าที่ได้นำสินค้าจัดส่งตามที่อยู่ที่ผู้ซื้อได้ระบุไว้ในระบบ เจ้าหน้าที่จะโทรแจ้งผู้ซื้อให้ทราบล่วงหน้าหากเจ้าหน้าที่ไม่สามารถติดต่อ ผู้ซื้อได้ภายใน 10 นาทีเจ้าหน้าที่จะนำสินค้ากลับมายังศูนย์กระจายสินค้า ตลาดสี่มุมเมืองหากผู้ซื้อยังมีความประสงค์จะรับสินค้าต้องรับผิดชอบ ค่าขนส่งด้วยตนเอง   5. กรณีที่ผู้ซื้อต้องการให้เจ้าหน้าที่วางสินค้าไว้หน้าร้านหรือหน้าบ้านโดย ไม่ประสงค์จะตรวจสอบและเซ็นต์รับสินค้าผู้ซื้อต้องระบุไว้หลังช่องที่อยู่ใน การจัดส่ง แต่ทางระบบจะไม่รับผิดชอบในกรณีที่สินค้าเสียหายและสูญหาย  6. เมื่อผู้ซื้อได้รับสินค้าแล้วจะต้องตรวจสอบคุณภาพและความครบถ้วน ของสินค้าร่วมกับเจ้าหน้าที่ขนส่งสินค้าและลงลายมือชื่อในเอกสารการรับ สินค้าทุกครั้งเมื่อลงลายมือชื่อแล้วถือว่าเป็นการยอมรับในคุณภาพและ ความครบถ้วนของสินค้า    7. กรณีเกิดเหตุจำเป็นที่ผู้ซื้อต้องการเปลี่ยนแปลงที่อยู่ในการจัดส่ง ภายหลังจากที่ได้ชำระเงินแล้วต้องแจ้งก่อนเวลาจัดส่งสินค้าในรอบที่ระบุ มาในระบบ และจะต้องชำระค่าบริการจัดส่งเพิ่มเติม 500 บาท   8. กรณีที่ผู้ซื้อประสงค์ให้เจ้าหน้าที่จัดส่งสินค้านอกเหนือจากชั้นที่ 1 (ชั้นที่รถสามารถเข้าถึงได้) จะต้องชำระค่าบริการเพิ่มเติม 100 บาท   </span><span style="color: #333333; font-size: 14px;  font-weight: 600; line-height: 20px; word-wrap: break-word">การเคลมสินค้า :</span><span style="color: #333333; font-size: 14px;  font-weight: 400; line-height: 20px; word-wrap: break-word"> 1. สินค้าที่ระบบจะรับเคลมต้องเข้าเงื่อนไข ดังนี้      - สินค้าเกิดความเสียหายจากการขนส่ง       - สินค้าเน่าเสียตั้งแต่ 10% ขึ้นไปของปริมาณการซื้อสินค้าชนิดนั้น        - น้ำหนักสินค้าน้อยกว่าที่ระบุ 10% ขึ้นไปของปริมาณการซื้อสินค้าชนิดนั้น       - สินค้าที่ไม่ตรงตามสเปค (คุณภาพ) ที่ซื้อในเกรด A (สวย) เท่านั้น (หากไม่ใช่เกรด A ระบบจะไม่รับเคลม)     - สินค้าผิดประเภท ชนิด ยี่ห้อ ขนาดจากที่ได้สั่งผ่านระบบ       - สินค้าหมดอายุ   2. กรณีผู้ซื้อต้องการเคลมสินค้าต้องดำเนินการดังต่อไปนี้     - แจ้งทาง Contact Center ที่หมายเลขโทรศัพท์ 02-023-9903 หรือ Line Official : @smmonline ภายใน 24 ชั่วโมง (นับจากเจ้าหน้าที่ ได้ทำการจัดส่งสินค้ายังที่อยู่ตามที่ระบุในระบบ) เจ้าหน้าที่บริการลูกค้า (CS) จะเป็นตัวกลางในการประสานงานระหว่าง ผู้ซื้อและ ผู้ขาย หรือฝ่ายขนส่งให้ท่านในลำดับถัดไป     - แนบรูปถ่ายสินค้าที่ต้องการเคลมอย่างชัดเจน เพื่อให้เจ้าหน้าที่สามารถหลักฐานการเคลมสินค้าแก่ผู้ขาย (เจ้าหน้าที่จะพิจารณาจากหลักฐานที่ได้รับเท่านั้น)  </span><span style="color: #333333; font-size: 14px;  font-weight: 600; line-height: 20px; word-wrap: break-word">การคืนเงินจากระบบ : </span><span style="color: #333333; font-size: 14px;  font-weight: 400; line-height: 20px; word-wrap: break-word">     ในกรณีที่เกิดเหตุการณ์ที่ระบบจะต้องชำระเงินให้แก่ผู้ซื้อ ผู้ซื้อจะได้รับการโอนเงินภายใน 48 ชั่วโมง (นับจากที่ได้รับแจ้งจากเจ้าหน้าที่)   </span><span style="color: #333333; font-size: 14px;  font-weight: 600; line-height: 20px; word-wrap: break-word">หมายเหตุ :</span><span style="color: #333333; font-size: 14px;  font-weight: 400; line-height: 20px; word-wrap: break-word">         ในกรณีที่ผู้ซื้อทำการตกลงเงื่อนไขต่าง ๆ กับผู้ขายโดยไม่แจ้งให้เจ้าหน้าที่ของทีมสี่มุมเมืองออนไลน์ทราบ ทางระบบจะไม่รับผิดชอบต่อความเสียหายนั้น ๆ     ประกาศใช้วันที่ 5 มีนาคม พ.ศ. 2567 เป็นต้นไป</span></div>',
                onTapUrl: (url) async {
                  return true;
                },
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SMMCheckbox.withText(
          text: Trans.current.register_consent1,
          isStar: true,
          textDecoration: TextDecoration.underline,
        ),
        const SizedBox(
          height: 12,
        ),
        SMMCheckbox.withText(
          text: Trans.current.register_consent2,
        ),
        const SizedBox(
          height: 16,
        ),
        SMMFilledButton.normal(
          label: Trans.current.register_confirm_button,
          width: double.infinity,
          onPressed: () {},
        ),
        const SizedBox(
          height: 10,
        ),
        SMMOutlinedButton(
          outlineColor: AppColors.primaryBrandMain,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const $AssetsIconsGen().iconArrowLeft.svg(),
              const SizedBox(
                width: 4,
              ),
              Text(Trans.current.register_back_button,
                  style: AppTextStyles.textBTNNormal.copyWith(
                    color: AppColors.primaryBrandMain,
                  )),
            ],
          ),
          onPressed: () {
            context.read<RegisterBloc>().add(const RegisterBlocEvent.back());
          },
        ),
      ],
    );
  }
}
