<%@ Page Title="" Language="C#" MasterPageFile="~/FrontSite.Master" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="DinersRealEstateManagement.sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Banner-->
    <header class="page-section" id="banner"></header>
    <!-- Contact-->
    <section class="page-section pt-5" id="contact">
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-lg-8 col-xl-6 text-center">
                    <h2 class="mt-0">註冊會員</h2>
                    <hr class="divider" />
                    <ul class="progress mb-4">
                        <li class="active">確認條款</li>
                        <li id="Basic_Info" runat="server">基本資料</li>
                        <li id="Register_Success" runat="server">註冊成功</li>
                    </ul>
                </div>
            </div>
            <div class="row gx-4 gx-lg-5">
                <div class="col-lg-12" id="Panel_Check" runat="server">
                    <p>
                        您需要同意《會員條款》、《會員服務契約》和《個人資料暨隱私權保護政策》以建立一個新帳號。
                    如您對各項文件有任何疑義，可致電客服中心諮詢。閱讀文件的過程中，如果您不同意其中任何條款約定，您應立即停止註冊程式，
                    當您於勾選同意鍵時，亦表示願遵守相關法律規定。
                    </p>
                    <pre class="rounded mx-auto d-block mb-2"><b>大來不動產資料管理系統會員條款</b>


大來不動產資料管理系統，為<u>大來不動產鑑定顧問有限公司</u>所經營管理之網路平台(以下簡稱本平台)。我們非常重視您的相關權益，希望您在使用本平台之會員服務(以下簡稱本服務)前，仔細閱讀以下會員權益。


<b>一、 認知與接受條款</b>
(一) 當會員完成本平台之會員註冊手續，或開始使用本服務時，即表示已閱讀、瞭解並同意接受本服務條款之所有內容，並完全接受本服務現有與未來衍生的服務項目及內容。
(二) 本平台有權於任何時間修改或變更本服務條款之內容，修改後的服務條款內容將公佈網站上，本平台將不會個別通知會員，建議會員隨時注意該等修改或變更。於本平台修改、變更本服務條款內容後，會員繼續使用本服務時，即視為會員已閱讀、瞭解並同意接受該等修改或變更服務條款。若不同意上述的服務條款修訂或更新方式，或不接受本服務條款的其他任一約定，會員應立即停止使用本服務。


<b>二、 會員的註冊義務</b>
(一) 會員應依本服務註冊表所提示之項目，提供會員本人正確、最新的資料，且不得以第三人之名義註冊為會員。每位會員僅能註冊登錄一個帳號，不可重覆註冊登錄。
(二) 會員應即時維持並更新會員個人資料，確保其正確性，以獲取最佳之服務。
(三) 若會員提供任何錯誤或不實的資料、或未按指示提供資料、或欠缺必要之資料、或有重覆註冊帳號等情事時，本平台有權不經事先通知，逕行暫停或終止會員的帳號，並拒絕會員使用本服務之全部或一部分。
(四) 若會員未滿20歲或在法律上受輔助宣告之人，應事先經會員的法定代理人 （或輔助人）閱讀、瞭解並同意本服務條款之所有內容及其後修改變更，方得使用或繼續使用本服務。當會員使用或繼續使用本服務時，即推定會員的法定代理人（或輔助人）已閱讀、瞭解並同意接受本服務條款之所有內容及其後修改變更。若原本為完全行為能力人，而於註冊後受輔助宣告者，亦同。


<b>三、 會員帳號、密碼及安全</b>
(一) 會員於完成本服務的註冊程序之後，將取得一個特定之密碼及會員帳號，維持密碼及帳號之機密安全，是會員的責任。任何依照規定方法輸入會員帳號及密碼與登入資料一致時，無論是否由本人親自輸入，本平台均將推定為會員本人所使用，利用該密碼及帳號所進行的一切行動，會員本人應負完全責任。
(二) 會員的密碼或帳號遭到盜用或有其他任何安全問題發生時，會員將立即通知本平台。
(三) 會員的帳號、密碼及會員權益均僅供會員個人使用及享有，不得轉借、轉讓他人或與他人合用。如會員之帳號或密碼遭盜用、不當使用或其他本平台無法辯識是否為本人親自使用之情況時，對此所致之損害，除證明係因可歸責於本平台之事由所致，本平台將不負任何責任。本平台若知悉會員之帳號密碼確係遭他人冒用時，將立即暫停該帳號之使用(含該帳號所生交易之處理)。
(四) 會員基本資料（包含帳號暱稱、金融帳號、手機號碼等一切必要欄位）為本平台收付款時的基礎資料，如有變更請立即修正，若因會員未變更基礎資料，導致金流、資訊流作業無法完成，不得作為取消交易、拒絕付款之理由。對於會員所提供任何不正確不合法之連線方式招致的任何費用，本平台將不會負擔任何責任。會員如使用無效銀行帳戶，或非使用者本人的銀行帳戶進行交易，使用者應負起法律責任。


<b>四、 隱私權政策</b>
關於會員的註冊以及其他特定資料依「隱私權政策」受到保護與規範。


<b>五、 會員的守法義務及承諾</b>
(一) 會員承諾絕不為任何非法目的或以任何非法方式使用本服務，並承諾遵守中華民國相關法規及一切使用網際網路之國際慣例。會員若係中華民國以外之使用者，並同意遵守所屬國家或地域之法令。
(二) 會員同意並保證不得利用本服務從事侵害他人權益或違法之行為，包括但不限於：
 1. 公布或傳送任何誹謗、侮辱、具威脅性、攻擊性、不雅、猥褻、不實、違反公共秩序或善良風俗或其他不法之文字、圖片或任何形式的檔案。
 2. 侵害或毀損本平台或他人名譽、隱私權、營業秘密、商標權、著作權、專利權、其他智慧財產權及其他權利。
 3. 違反依法律或契約所應負之保密義務。
 4. 冒用他人名義使用本服務。
 5. 傳輸或散佈電腦病毒。
 6. 從事未經本平台事前授權的商業行為。
 7. 刊載、傳輸、發送垃圾郵件、連鎖信、違法或未經本平台許可之多層次傳銷訊息及廣告等；或儲存任何侵害他人智慧財產權或違反法令之資料。
 8. 對本服務其他用戶或第三人產生困擾、不悅或違反一般網路禮節致生反感之行為。
(三) 會員若違反本條義務及承諾，經查證屬實者，本平台得終止會員資格並採取法律途徑、或保留法律追訴之權利。


<b>六、 會員服務申請處理之終止與變更</b>
會員若有下列任一情形時，本平台有權隨時終止或變更任一會員帳號之服務。就終止或更改會員使用本服務所可能產生之困擾、不便或損害，本平台對任何會員或第三人均不負任何責任。
(一) 會員以登錄不實資料方式進行註冊。
(二) 會員註冊尚未通過認證。
(三) 以本平台或類似本平台名稱使用本服務者。
(四) 使用中文、英文及數字以外之字元及不雅文字作為本服務之名稱。
(五) 冒用他人名義申請本服務之帳號。
(六) 使用虛偽不正之方式購買本服務。
(七) 違反本服務條款時。
(八) 違反公共安全、公共秩序與善良風俗之行為時。
(九) 違反現行法律之行為時。


<b>七、 服務之停止、中斷</b>
(一) 本平台將依一般合理之技術及方式，維持系統及服務之正常運作。但於以下各項情況時，本平台有權停止、中斷提供本服務：
 1. 本平台網站軟硬體設備、電子通信設備進行必要之保養及施工時。
 2. 發生突發性之軟硬體設備、電子通信設備故障時。
 3. 本平台網站申請之軟硬體設備、電子通信服務被停止，無法提供服務時。
 4. 在緊急情況下為維護其他會員或第三人的人身、資料之完整安全。
 5. 由於天災等不可抗力之因素或其他不可歸責之因素，致本平台無法提供服務時。
(二) 本服務於上列任一情形發生時，本平台有權暫停或中斷本服務之全部或部分，對因此而產生之困擾、不便或損害，除證明係因可歸責於本平台之事由所致，本平台將不負任何責任。
<b>八、 交易聲明</b>
(一) 因本平台有關金流與銀行信用卡合作介接或匯款，故會員皆需遵從銀行相關規定，當會員使用上述金流部分時，即表示會員已同意接受該銀行或介接金流之服務條款之所有內容。
(二) 當會員使用本平台相關交易服務進行金流動作後，可能由於網路銀行本身系統問題、銀行相關作業網路連線品質、消費者身份確認錯誤或其他本平台不可抗拒因素造成交易無法完成。會員必須確認會員所輸入之基本資料無誤，以便本平台能通知會員作後續處理。若會員所提供或輸入之資訊有誤，以致使本平台無法及時通知會員，因而所造成的損失或後續處理上的困擾，本平台對此不負任何責任。
(三) 連線設備：假使會員的連線設備損失或故障，造成會員最後與本平台連接時所進行的交易記錄可能失去，本平台將不因此負擔會員的損失。


<b>九、 責任之限制與排除</b>
(一) 本平台所提供之各項功能，均依該功能當時之現況提供使用，本平台對於其效能、速度、完整性、可靠性、安全性、正確性等，皆不負擔任何明示或默示之擔保責任。
(二) 本平台並不保證本服務之網頁、伺服器、網域等所傳送的電子郵件或其內容不會含有電腦病毒等有害物；亦不保證郵件、檔案或資料之傳輸儲存均正確無誤不會斷線和出錯等，因各該郵件、檔案或資料傳送或儲存失敗、遺失或錯誤等所致之損害，本平台不負賠償責任。
<b>十、 智慧財產權的保護</b>
(一) 本平台所使用之軟體或程式、網站上所有內容，包括但不限於著作、圖片、檔案、資訊、資料、網站架構、網站畫面的安排、網頁設計，均由本平台或其他權利人依法擁有其智慧財產權，包括但不限於商標權、專利權、著作權、營業秘密與專有技術等。任何人不得逕自使用、修改、重製、公開播送、改作、散布、發行、公開發表、進行還原工程、解編或反向組譯。若會員欲引用或轉載前述軟體、程式或網站內容，必須依法取得本平台或其他權利人的事前書面同意。尊重智慧財產權是會員應盡的義務，如有違反，會員應對本平台負損害賠償責任（包括但不限於訴訟費用及律師費用等）。
(二) 在尊重他人智慧財產權之原則下，會員同意在使用本平台之服務時，不作侵害他人智慧財產權之行為。若會員有涉及侵權之情事，本平台可暫停全部或部份之服務，或逕自以取消會員帳號之方式處理。


<b>十一、 會員對本平台之授權</b>
(一) 對於會員上載、傳送、輸入或提供之資料，會員同意本平台網站得於合理之範圍內蒐集、處理、保存、傳遞及使用該等資料，以提供使用者其他資訊或服務、或作成會員統計資料、或進行關於網路行為之調查或研究，或為任何之合法使用。若會員無合法權利得授權他人使用、修改、重製、公開播送、改作、散布、發行、公開發表某資料，並將前述權利轉授權第三人，請勿擅自將該資料上載、傳送、輸入或提供至本平台。
(二) 任何資料一經會員上載、傳送、輸入或提供至本平台時，視為會員已允許本平台無條件使用、修改、重製、公開播送、改作、散布、發行、公開發表該等資料，並得將前述權利轉授權他人，會員對此絕無異議。會員並應保證本平台使用、修改、重製、公開播送、改作、散布、發行、公開發表、轉授權該等資料，不致侵害任何第三人之智慧財產權，否則應對本平台負損害賠償責任）。


<b>十二、 準據法與管轄法院</b>
(一) 因使用本平台服務而所生之法律爭議，雙方同意以中華民國法為準據法，並以臺灣臺南地方法院為第一審管轄法院。
(二) 對於本服務條款之解釋與適用產生疑義雙方同意依中華民國之法律、行政解釋、習慣及法理原則予以處理。

                    </pre>
                    <input type="checkbox" id="signup" required runat="server" class="form-check-input"><span class="fw-bolder px-2"> 我同意以上《會員條款》</span>
                    <span style="display: block">&nbsp;</span>

                    <pre class="rounded mx-auto d-block mb-2"><b>大來不動產資料管理系統會員服務契約</b>


大來不動產資料管理系統會員服務契約（以下簡稱本契約），為大來不動產鑑定顧問有限公司(下稱甲方)授權會員(下稱乙方)於大來不動產資料管理系統平台(以下簡稱本平台)，透過網際網路連線、或移動裝置平台使用會員服務(以下簡稱本服務)。爰此，關於本服務之權利義務，雙方同意以本契約約定之。


<b>一、 契約審閱期間</b>
請您務必詳細閱讀並經七日以上審閱，以保障您的權益。一旦您勾選同意鍵後，即視為您已閱讀並同意遵守，所有契約條款之會員規範（包括：會員系統服務契約、停權管理規章、儲值與使用規範、客服中心內容、公告事項、會員服務申請規範、會員服務申請說明、個人資料暨隱私權保護政策等），以及本契約其後如有任何增刪修改。您於勾選同意鍵時，亦表示願遵守相關法律規定，且相關法律規定如有改時，亦同。


<b>二、 契約當事人</b>
(一) 甲方：大來不動產鑑定顧問有限公司。
 1. 代表人：黃國棟
 2. 統一編號：16522259
 3. 公司設立地址：臺南市中西區郡王里大埔街63號
 4. 連絡電話：06-213-1066
(二) 乙方：茲因本平台會員服務提供事宜，於本平台所提供之註冊頁面填寫個人資料，並付費成為會員者。
(三) 乙方經由網際網路購買本平台服務者，於本平台所指定之網頁上點選「同意」鍵，表示同意購買本服務並同意以電子文件作為表示方式後，本平台將立即以確認機制供您確認電子文件內容，經您再次確認後，本契約成立、生效。
(四) 乙方若為限制行為能力人者，本契約之訂定，應經您的法定代理人同意，本契約始生效力；您若為無行為能力人者，本契約應由您的法定代理人代理訂定。
(五) 乙方於契約審閱期過後初次註冊帳號，進入顯示本契約條款之網頁，並按下「確定」之按鍵後，即推定乙方同意本契約條款之所有規定。


<b>三、 服務範圍</b>
本平台服務範圍係由甲方提供網路伺服器，供乙方透過網際網路連線登入進行本服務。此不包括乙方向網際網路接取服務業者申請接取網際網路之服務，乙方必須自行配備上網所需之各項電腦設備，以及負擔接上網際網路之費用及電話費用。


<b>四、 乙方責任與義務</b>
(一) 真實登錄義務
 1. 若乙方同意並需要使用甲方服務的所有細項，必須經過甲方制定之系統認證，否則甲方無須提供完整的服務內容。
 2. 乙方於註冊時須提供完整詳實且符合真實之個人資料，且乙方所登錄資料事後有變更時，應隨時於線上更新或利用會員服務申請變更之。若乙方故意登載不實之個人資料即構成違約事由，經甲方發現並通知乙方更正，乙方應於7日內更正，如乙方仍未更正，甲方得停止其會員帳號使用權7日，且甲方無須負擔任何損害賠償責任。如因乙方虛偽登載導致甲方損失，甲方得索取損害賠償及懲罰性違約金，同時乙方應自負相關民刑事責任（包括但不限於刑法偽變造文書、詐欺、妨礙電磁紀錄等相關罪章）。
 3. 如乙方提供之個人資料有填寫不實，或原所登錄之資料已不符合真實而未更新，或有任何其他誤導之嫌，於乙方提供真實資料或更新資料前，甲方保留隨時暫停乙方使用各項服務之權利。


(二) 乙方使用服務之責任與義務
 1. 乙方同意遵守網際網路國際使用慣例與禮節之相關規定。
 2. 乙方不得利用本服務傳送、發表涉及辱罵、毀謗、不雅、淫穢、攻擊性之文章或圖片。
 3. 乙方同意必須充分尊重智慧財產權，禁止發表侵害他人各項智慧財產權或其他權利之文字、圖片或任何形式之檔案。
 4. 乙方利用本服務進行任何行銷、商業等行為時，不得有任何強制、騷擾等影響第三人權利之行為，其與第三人所生之任何紛爭，蓋由乙方自行負責，與甲方無涉。
 5. 乙方利用本服務進行任何行銷、商業等行為時，如接獲第三人表明禁止甲方透過本服務蒐集、處理或利用個人資料者，乙方應立即通知甲方為適當之處置。
 6. 乙方利用本服務進行任何行銷、商業等行為時，應按個資法第20條規定，提供第三人拒絕接受行銷之方式，並自行支付所需費用。


(三) 帳號保管義務
 1. 乙方了解開始使用本會員服務，其會員帳號所有權仍屬甲方所有，乙方僅得依本服務條款之約定使用。
 2. 乙方應妥善保管帳號與密碼，所取得之帳號及密碼，僅供乙方使用。密碼得依甲方提供之修改機制進行變更。甲方人員不得主動詢問乙方之密碼。甲方應於契約終止後三十日內，保留乙方之帳號及附隨於該帳號之電磁紀錄。
 3. 若乙方發現帳號或密碼遭人非法使用，或有任何異常破壞使用安全之情形，應立即通知甲方。
 4. 乙方應定期妥善的管理帳號，並定期更改密碼的設定，且勿隨意下載非法軟體，以避免駭客入侵。
 5. 乙方因共用帳號、委託他人付費衍生與第三人間之糾紛時，甲方得不予協助處理。


(四) 資料保密原則
 1. 對於乙方所登錄或留存之個人資料，甲方應依相關法律規定以及甲方「個人資料暨隱私權保護政策」之規定處理。除基於法律之規定、受司法機關或其他有權機關之要求、在緊急情況下為維護其他乙方或第三人之人身安全之原因以外，甲方在未獲得乙方同意以前，不對外揭露乙方之姓名、聯絡電話、地址、電子郵件地址及其他依法受保護之個人資料。
 2. 甲方不會向任何人士或公司提供乙方的個人資料。但在以下的情況下，甲方會向其他人士或公司提供乙方的個人資料：需要與甲方之合作夥伴、為甲方執行工作的承包商或供應商，以及其他共用乙方的資料，方能夠提供乙方所要求的產品或服務者


<b>五、 服務之暫停或中斷</b>
(一) 於下列情形發生時，甲方有權停止或中斷提供服務。
 1. 本平台系統及軟硬體設備進行例行性或必要性的維護。
 2. 甲方伺服器的電子通信服務發生狀況或進行維護，導致無法通訊。
 3. 發生突發性之軟硬體設備與電子通信設備故障。
 4. 由於天災等不可抗拒的因素，導致甲方系統無法進行。
 5. 其他不可歸責於甲方所造成服務停止或中斷。
(二) 甲方依本契約之規定負有於提供本服務時，維護其自身電腦系統，符合當時科技或專業水準可合理期待之安全性之責任，如有系統或電磁紀錄遭破壞或異常，應採合理的措施後儘速回復。


<b>六、 契約之終止與變更</b>
(一) 甲方修改本契約內容時，應於網站公告之，並以書面或電子郵件通知乙方。乙方於第一項通知到達後七日內：
 1. 乙方未為反對之表示者，視為乙方接受甲方契約變更之內容。
 2. 乙方為反對之表示者，視為乙方對甲方終止本契約之通知。
(二) 乙方應確保留存於甲方之聯絡地址或電子郵件之正確，若有變更，乙方應立即通知甲方。甲方以乙方留存於甲方之聯絡地址或電子郵件為通知之發出時，即視為已合法送達。
(三) 乙方若有下列任一情形時，甲方以書面或電子郵件通知乙方後，有權立即終止本契約：
 1. 以甲方或類似甲方名稱使用本服務者。
 2. 使用中文、英文及數字以外之字元或甲方不允許或不雅文字作為註冊之名稱。
 3. 冒用他人名義申請甲方服務之帳號。
 4. 利用任何系統或工具對本平台或本服務程式之惡意攻擊或破壞者。
 5. 乙方有違反現行法律之行為，或經司法機關查獲任何不法之行為，其他違背法律、命令之行為。
 6. 乙方在平台中發表、張貼或傳播任何關於誹謗、攻擊、猥褻、脅迫、騷擾、中傷、粗俗、侵害他人隱私、侵犯他人權利或道德上令人不快的文字、圖片、聲音、影片或其他形式的內容，經甲方認定屬情節重大者。
 7. 違反本平台管理規範或其他本契約內容之任一規定，經甲方認定屬情節重大者。
 8. 利用外掛程式、病毒程式、本服務之程式漏洞或其他違反公平合理之方式使用本服務者。
(四) 對於乙方的違約行為，甲方得依據會員規範，逕行終止契約或違規輕重給予暫停使用或查詢處分，若有重大違規者，給予永久停權之處分。


<b>七、 智慧財產權</b>
(一) 甲方提供之會員服務或本平台上之所有著作及資料、一切相關周邊產品，其著作權、專利權、商標、營業秘密、其他智慧財產權、所有權或其他權利，均為甲方或其權利人所有，除事先經甲方或其權利人之合法授權外，乙方不得擅自重製、傳輸、改作、編輯或以其他任何形式、基於任何目的加以使用，否則應負擔相關法律責任。
(二) 乙方不得採用任何方法對其提供經營（或主機）服務、中間媒介服務，或對其進行攔截、模擬或重定向。這些被禁止的方法包括但不僅限於架設私人伺服器、逆向工程、修改本資訊平台任何資訊，或添加新的組件，或使用某種工具程式來提供平台經營(或主機)服務。


<b>八、 遵守中華民國法令</b>
 1. 乙方必須遵守使用本服務的所有相關中華民國法令。若乙方的行為違反本契約或其他法令，乙方同意甲方得以其所登錄之通訊資料通知乙方後，得暫停帳號使用權。乙方有違反法律規定之情事，應自負法律責任。除了上述情形，甲方得依其他用戶的投訴、權利人的智慧財產權侵權通知或法院、主管機關的命令刪除或暫停任何違反本契約或其他法令的帳號或內容。
 2. 乙方承諾遵守中華民國相關法規及一切國際網際網路規定與慣例。若使用甲方台灣地區以外之網站，同意遵守各該網站當地之法令及網路慣例。
 3. 乙方同意並保證不公布或傳送任何毀謗、不實、威脅、不雅、猥褻、不法、攻擊性、毀謗性或侵害他人智慧財產權的文字，圖片或任何形式的檔案於甲方的相關網站上。
 4. 乙方同意必須充份尊重著作權，禁止發表侵害他人各項智慧財產權之文字、圖片或任何形式的檔案。


<b>九、 送達</b>
 1. 有關本契約所有事項之通知，乙方同意甲方以乙方登錄之連絡地址或電子郵件地址為送達。
 2. 前項地址或電子郵件地址變更，乙方應即通知甲方，並同意改依變更後之電子郵件地址為送達。
 3. 甲方依乙方提供之電子郵件地址為通知發出後，經通常之傳遞期間，即推定為已送達。
 4. 如乙方怠於連絡地址或電子郵件地址變更或因其他事由致通知無法到達或拒收時，以甲方通知發出時，視為已合法送達。
 5. 因乙方故意或過失致甲方無法為送達者，甲方對乙方因無法送達所致之損害不負任何賠償責任。


<b>十、 個別條款之效力</b>
本契約所定之任何條款，於一部分無效時，不影響其他條款之效力。


<b>十一、 準據法</b>
本契約與相關平台管理規範、平台使用規則之解釋及適用，以及乙方因使用本服務而與甲方間所生之權利義務關係，雙方同意以中華民國法律為準據法。


<b>十二、 管轄法院</b>
因本契約涉及的一切爭訟，雙方合意以甲方總公司所在地之地方法院為第一審管轄法院，但不得排除消費者保護法第四十七條或民事訴訟法第四百三十六條之九規定小額訴訟管轄法院之適用。

                    </pre>
                    <input type="checkbox" id="serves" required runat="server" class="form-check-input"><span class="fw-bolder px-2"> 我同意以上《會員服務契約》</span>
                    <span style="display: block">&nbsp;</span>

                    <pre class="rounded mx-auto d-block mb-2"><b>大來不動產資料管理系統個人資料保護與隱私權政策</b>


大來不動產資料管理系統，為<u>大來不動產鑑定顧問有限公司</u>所經營管理之網路平台(以下簡稱本平台)，本平台非常重視會員的隱私權且遵循「個人資料保護法」之規定，因此制訂了個人資料保護與隱私權政策，您可參考下列個人資料保護與隱私權政策的內容。


<b>一、 適用範圍</b>
本個人資料保護與隱私權政策，適用於您在使用本平台時，所涉及的個人資料蒐集、運用與保護，但不適用於與本平台以外的相關連結網站，也不適用於非本平台所委託或參與管理的人員。


<b>二、 蒐集之目的</b>
本平台蒐集個人資料之目的，在於進行行銷業務、不動產服務、客戶管理與服務、內部的統計調查與分析、會員管理等，法定特定目的項目編號為〇〇七  不動產服務、〇二〇  代理與仲介業務、〇四〇  行銷（包含金控共同行銷業務）、〇五二  法人或團體對股東、會員（含股東、會員指派之代表）、董事、監察人、理事、監事或其他成員名冊之內部管理、〇七一  建築管理、都市更新、國民住宅事務、〇九〇  消費者、客戶管理與服務、一五七  調查、統計與研究分析。本平台將藉由加入會員之過程或進行交易之過程來蒐集個人資料。


<b>三、 蒐集之個人資料類別</b>
本平台於網站內蒐集的個人資料包括，C001  辨識個人者：如會員之姓名、地址、電話、電子郵件等資訊。


<b>四、 蒐集之方式</b>
(一) 加入會員：
當您申請加入會員時，您將會被要求填寫一份您的個人資料，包括姓名、性別、身份證字號、住址、生日、電話、電子信箱等相關資料，並設定您的帳號密碼，以便您日後登入使用會員的各項服務。
(二) 線上交易：
如您選擇使用線上交易服務，將會依照您提出的線上交易形態，蒐集您所填寫的訂單相關資料，以確保您完成付款、儲值或物流等消費服務。
(三) 瀏覽網頁：
當您於本平台站內或其附屬網站中瀏覽或查詢時，本平台伺服器將自動紀錄您使用連線之IP位置、時間及瀏覽相關記錄。這些資料僅供作流量統計分析及網路服務優化，以便於改善本平台的服務品質，這些資料僅作為總量上的分析，不會和特定個人連繫。
(四) 其他：
除了您直接提供的個人資料之外，您也可能在本平台合作廠商處主動提供個人資料，並在您同意或為履行契約目的前提下，將您的個人資料提供給本平台。這些資料只會在您同意或為履行契約的服務範圍內利用及處理，不會用於其他用途。


<b>五、 利用期間、地區、對象及方式：</b>
(一) 期間：會員要求停止使用個人資料，或本平台停止提供服務之日為止。
(二) 地區：會員之個人資料將用於台灣地區。
(三) 利用對象及方式：會員之個人資料蒐集除用於本平台之會員管理、客戶管理之檢索查詢等功能外，亦將利用於辨識身份、金流服務、物流服務、行銷廣宣等。例示如下：
 1. 以會員身份使用本平台提供之各項服務時，於頁面中自動顯示會員資訊。
 2. 為遂行交易行為：會員對商品或勞務為預約、下標、購買、參與贈獎等之活動或從事其他交易時，關於商品配送、勞務提供、價金給付、回覆客戶之詢問、本平台對會員之詢問、相關售後服務及其他遂行交易所必要之業務。
 3. 宣傳廣告或行銷等：提供會員各種電子雜誌等資訊、透過電子郵件、郵件、電話等提供與服務有關之資訊。將會員所瀏覽之內容或廣告，依客戶之個人屬性或購買紀錄、本平台網站之瀏覽紀錄等項目，進行個人化作業、會員使用服務之分析、新服務之開發或既有服務之改善等。針對民調、活動、留言版等之意見，或其他服務關連事項，與會員進行聯繫。
 4. 回覆客戶之詢問：針對會員透過電子郵件、郵件、傳真、電話或其他任何直接間接連絡方式向本平台所提出之詢問進行回覆。
 5. 本平台可能針對您加入會員時所填寫的資料，以及站內瀏覽時伺服器所產生的紀錄，將不定期進行總體會員行為分析與統計，不會針對個人行為進行分析。
 6. 其他業務附隨之事項：附隨於上述之利用目的而為本平台提供服務所必要之使用。
 7. 其他符合個資法第20條規定之利用。


<b>六、 會員就個人資料之權利：</b>
(一) 本平台所蒐集個人資料之會員，依個人資料保護法得對本平台行使以下權利：
 1. 查詢或請求閱覽。
 2. 請求製給複製本。
 3. 請求補充或更正。
 4. 請求停止蒐集、處理或利用。
 5. 請求刪除。
(二) 會員如欲行使上述權利，可與本平台客服連絡進行申請。查詢或請求閱覽個人資料或製給複製本者，本平台得酌收必要成本費用。
(三) 會員如拒絕提供加入會員所需必要之資料，將可能導致無法享受完整服務或完全無法使用該項服務。


<b>七、 資料安全</b>
為保障會員的隱私及安全，本平台會員帳號資料會用密碼保護。本平台並盡力以合理之技術及程序，保障所有個人資料之安全。


<b>八、 自我保護措施</b>
(一) 會員應妥善保管您的密碼及或任何個人資料，不要將任何個人資料，尤其是密碼提供給任何人，您的密碼避免設定與其他網站、信箱、社群、論壇或平台網站的密碼相同。
(二) 會員於完成繳費、取閱電子郵件、結束平台服務等各項程序後，務必記得登出帳戶，若您與他人共享電腦或使用公共電腦，切記要關閉瀏覽器視窗，以防止他人讀取您的個人資料或信件。
(三) 會員應避免開啟來路不明的網站及其附件檔案；不要安裝或執行來路不明之程式，或前往外掛網站、論壇等，以防止您資料的外洩與避免電腦遭木馬程式植入之機會。
(四) 本平台之人員皆不會主動向任何使用者要求密碼資料，不論是任何理由皆是不被允許的，若發現有此類情況，應立即回報給本平台進行處理。


<b>九、 Cookie</b>
為了便利會員使用，本平台網站會使用cookie技術，以便於提供會員所需要的服務；cookie是網站伺服器用來和會員瀏覽器進行溝通的一種技術，它可能在會員的電腦中隨機儲存字串，用以辨識區別使用者，若會員關閉cookie有可能導致無法順利登入網站或無法使用購物車等狀況。


<b>十、 隱私權保護政策修訂</b>
(一) 隨著市場環境的改變，本平台將會不定時修訂網站政策，並以公告或電子郵件方式通知所屬全體會員，請您密切注意以保障個人權益。
(二) 當您於隱私權政策任何修改或變更後，繼續使用本平台網站與其所附屬之網站服務，表示您已閱讀、瞭解並同意接受隱私權政策修改或變更後之內容。如果您不同意本隱私權政策，請您立即停止使用本平台與其所附屬之網站服務。
(三) 會員如果對於本平台網站隱私權聲明、或與個人資料有關之相關事項有任何疑問，可以利用電子郵件和本平台客服中心聯絡。

                    </pre>
                    <input type="checkbox" id="personal" required runat="server" class="form-check-input"><span class="fw-bolder px-2"> 我同意以上《個人資料保護與隱私權政策》</span>
                    <div class="d-grid col-lg-4 mx-auto">
                        <asp:Button ID="confirm" runat="server" Text="確定" class="btn btn-success btn-xl mt-5 fw-bolder" OnClick="confirm_Click" />
                    </div>
                </div>
            </div>
            <div id="Panel_signup" runat="server" visible="False">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <p class="text-muted mb-5 fw-bolder">請輸入您的基本資料，並進行《手機簡訊認證》跟《 E-mail 認證》</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True"></asp:ScriptManager>
                        <%--<asp:Timer ID="Timer_Vercode" runat="server" OnTick="Timer_Vercode_Tick" Interval="1000"></asp:Timer>--%>
                        <ul class="basicDataForm">
                            <%--會員姓名--%>
                            <li class="form-floating mb-3">
                                <asp:TextBox ID="TextBox_Name" runat="server" CssClass="form-control" placeholder="Enter your name" data-sb-validations="required"></asp:TextBox>
                                <label for="TextBox_Name">姓名</label>
                                <asp:Label ID="Name_Err" Text="尚未輸入姓名" runat="server" CssClass="invalid-feedback" data-sb-feedback="TextBox_Name:required" />
                            </li>
                            <%--會員帳號--%>
                            <li class="form-floating mb-3">
                                <asp:TextBox ID="TextBox_Account" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name" TextMode="SingleLine"></asp:TextBox>
                                <label for="TextBox_Account">帳號</label>
                                <asp:Label ID="Account_Err" Text="會員帳號格式錯誤" runat="server" CssClass="invalid-feedback" />
                                <asp:Label ID="Account_Duplicate" Text="會員帳號重複" runat="server" Visible="False" ForeColor="#DC3545"/>
                            </li>
                            <%--會員密碼--%>
                            <li class="form-floating mb-3">
                                <asp:TextBox ID="TextBox_Pwd" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name" TextMode="Password"></asp:TextBox>
                                <label for="TextBox_Pwd">密碼</label>
                                <asp:Label ID="Pwd_Err" Text="尚未輸入會員密碼或密碼格式錯誤" runat="server" CssClass="invalid-feedback" />
                            </li>
                            <%--再次會員密碼--%>
                            <li class="form-floating mb-3">
                                <asp:TextBox ID="TextBox_PwdCheck" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name" TextMode="Password"></asp:TextBox>
                                <label for="TextBox_PwdCheck">再次輸入密碼</label>
                                <asp:Label ID="PwdCheck_Err" Text="密碼不一致" runat="server" CssClass="invalid-feedback" />
                            </li>
                            <%--會員電話--%>
                            <li class="form-floating mb-3">
                                <asp:TextBox ID="TextBox_Phone" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name"></asp:TextBox>
                                <label for="TextBox_Phone">電話</label>
                            </li>
                            <%--會員電話--%>
                            <%--行動電話--%>
                            <li>
                                <div class="form-floating mb-3">
                                    <asp:TextBox ID="TextBox_MoPhone" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name"></asp:TextBox>
                                    <label for="TextBox_MoPhone">手機號碼</label>
                                    <asp:Label ID="MoPhone_Err" Text="尚未輸入手機號碼或手機號碼格式錯誤" runat="server" CssClass="invalid-feedback" />
                                </div>
                                <div class="mb-3">
                                    <input type="button" id="Btn_SendPhoneVeri" value="發送手機驗證碼" class="btn btn-outline-primary fw-bolder" onclick="SendPhoneVeri_Click()"/>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox ID="TextBox_MoPhoneVeri" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name"></asp:TextBox>
                                    <label for="TextBox_MoPhoneVeri">手機驗證碼</label>
                                    <asp:Label ID="MoPhoneVeri_Err" Text="手機驗證碼不一致" runat="server" CssClass="invalid-feedback" />
                                </div>
                            </li>
                            <%--電子信箱--%>
                            <li>
                                <div class="form-floating mb-3">
                                    <asp:TextBox ID="TextBox_Mail" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name"></asp:TextBox>
                                    <label for="TextBox_Mail">E-mail</label>
                                    <asp:Label ID="Mail_Err" Text="尚未輸入E-mail或E-mail格式錯誤" runat="server" CssClass="invalid-feedback" />
                                </div>
                                <div class="mb-3">
                                    <input type="button" id="Btn_SendMailVeri" value="發送 E-mail 驗證碼" class="btn btn-outline-primary fw-bolder" onclick="SendMailVeri_Click()"/>
                                </div>
                                <div class="form-floating mb-3">
                                    <asp:TextBox ID="TextBox_MailVeri" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name"></asp:TextBox>
                                    <label for="TextBox_MailVeri">E-mail 驗證碼</label>
                                    <asp:Label ID="MailVeri_Err" Text="E-mail 驗證碼不一致" runat="server" CssClass="invalid-feedback" />
                                </div>
                            </li>
                            <li class="mb-3">
                                <div class="form-floating mb-3 d-grid">
                                    <asp:DropDownList ID="DDList_City" runat="server" CssClass="btn btn-outline-primary dropdown-toggle fs-5 fw-bolder">
                                        <asp:listitem value="0" >-----請選擇-----</asp:listitem>
                                        <asp:listitem value="01" text="基隆市"></asp:listitem>
                                        <asp:listitem value="02" text="台北市"></asp:listitem>
                                        <asp:listitem value="03" text="新北市"></asp:listitem>
                                        <asp:listitem value="04" text="桃園市"></asp:listitem>
                                        <asp:listitem value="05" text="新竹市"></asp:listitem>
                                        <asp:listitem value="06" text="新竹縣"></asp:listitem>
                                        <asp:listitem value="07" text="苗栗縣"></asp:listitem>
                                        <asp:listitem value="08" text="台中市"></asp:listitem>
                                        <asp:listitem value="09" text="彰化縣"></asp:listitem>
                                        <asp:listitem value="10" text="南投縣"></asp:listitem>
                                        <asp:listitem value="11" text="雲林縣"></asp:listitem>
                                        <asp:listitem value="12" text="嘉義市"></asp:listitem>
                                        <asp:listitem value="13" text="嘉義縣"></asp:listitem>
                                        <asp:listitem value="14" text="台南市"></asp:listitem>
                                        <asp:listitem value="15" text="高雄市"></asp:listitem>
                                        <asp:listitem value="16" text="屏東縣"></asp:listitem>
                                        <asp:listitem value="17" text="台東縣"></asp:listitem>
                                        <asp:listitem value="18" text="花蓮縣"></asp:listitem>
                                        <asp:listitem value="19" text="宜蘭縣"></asp:listitem>
                                        <asp:listitem value="20" text="澎湖縣"></asp:listitem>
                                        <asp:listitem value="21" text="金門縣"></asp:listitem>
                                        <asp:listitem value="22" text="連江縣"></asp:listitem>
                                    </asp:DropDownList>
                                    <asp:Label ID="City_Err" Text="尚未選擇縣市" runat="server" CssClass="invalid-feedback" />
                                </div>
                                <div class="form-floating">
                                    <asp:TextBox ID="TextBox_Address" runat="server" CssClass="form-control" data-sb-validations="required" placeholder="Enter your name"></asp:TextBox>
                                    <label for="TextBox_Address">地址</label>
                                    <asp:Label ID="Address_Err" Text="尚未輸入地址" runat="server" CssClass="invalid-feedback" />
                                </div>
                            </li>
                            <li class="form-floating">
                                <asp:TextBox ID="TextBox_Line" runat="server" CssClass="form-control" placeholder="Enter your name..." data-sb-validations="required" data-sb-can-submit="no"></asp:TextBox>
                                <label for="TextBox_Line">Line ID</label>
                                <asp:Label ID="Line_Err" Text="尚未輸入 Line ID" runat="server" CssClass="invalid-feedback" />
                            </li>
                        </ul>
                        <div class="d-grid">
                            <asp:Button ID="Btn_SighInConfirm" runat="server" Text="送出" CssClass="btn btn-success btn-xl mt-5 fw-bolder" OnClick="Btn_SighInConfirm_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row gx-4 gx-lg-5 justify-content-center" id="Panel_Complete" runat="server" visible="False">
                <div class="col-lg-8 col-xl-6 text-center">
                    <h2 class="mt-5 text-success fw-bolder">註冊成功！</h2>
                    <h5 class="mt-5 text-danger fw-bolder">*請等候審核會員付費資訊成功後，再點選"登入"使用付費功能！</h5>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script src="js/customer.js?20211025a"></script>
</asp:Content>
