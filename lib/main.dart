
<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>تعلم السواقة الجبلية</title>
<style>
*{box-sizing:border-box}
body{margin:0;font-family:Tahoma,Arial;background:#f1f5f9;color:#163047}
header{background:#12354a;color:white;padding:24px 16px;
border-radius:0 0 24px 24px}
header h1{margin:8px 0;font-size:25px}
header p{line-height:1.8}
main{padding:16px;max-width:650px;margin:auto}
.hero{background:linear-gradient(150deg,#1e6b58,#12354a);
color:white;border-radius:18px;padding:20px;margin-bottom:16px}
.mountain{font-size:54px;text-align:center}
.grid{display:grid;grid-template-columns:1fr 1fr;gap:12px}
.card{background:white;border-radius:14px;padding:15px;
box-shadow:0 2px 8px #0000000b}
.card h3{margin-top:5px}
button{border:0;border-radius:10px;padding:12px;
background:#13795b;color:white;font-size:15px;
font-weight:bold;cursor:pointer}
.card button{width:100%}
section{background:white;padding:17px;border-radius:15px;
margin-top:16px;line-height:1.9}
h2{font-size:20px}
.tip{background:#fff6d9;padding:13px;border-radius:10px;
margin:10px 0}
footer{text-align:center;padding:22px;color:#526777}
</style>
</head>
<body>
<header>
  <div>🚘 تطبيق تعليمي للمبتدئين</div>
  <h1>تعلم السواقة في الطرق الجبلية</h1>
  <p>تعلّم القواعد والتلميحات، واستعد للتدريب
  العملي الآمن مع مدرّب مؤهل.</p>
</header>

<main>
  <div class="hero">
    <div class="mountain">🏔️ 🚙</div>
    <h2>ابدأ رحلتك التعليمية</h2>
    <p>دروس مبسطة، مواقف خاصة، ونصائح للسلامة.</p>
    <button onclick="showLesson(0)">ابدأ الدروس</button>
  </div>

  <div class="grid">
    <div class="card">
      <h3>📘 الدروس</h3>
      <p>أساسيات القيادة الجبلية.</p>
      <button onclick="showLesson(0)">افتح</button>
    </div>
    <div class="card">
      <h3>⚠️ المواقف الخاصة</h3>
      <p>كيف تتصرف بأمان؟</p>
      <button onclick="showLesson(1)">افتح</button>
    </div>
    <div class="card">
      <h3>💡 التلميحات</h3>
      <p>تذكّر قواعد السلامة.</p>
      <button onclick="showLesson(2)">افتح</button>
    </div>
    <div class="card">
      <h3>📝 الاختبار</h3>
      <p>اختبر معلوماتك.</p>
      <button onclick="startQuiz()">ابدأ</button>
    </div>
  </div>

  <section id="content">
    <h2>📗 الدرس الأول: قبل صعود الجبل</h2>
    <p>افحص الإطارات والفرامل والسوائل، وتأكد من
    صلاحية السيارة قبل الانطلاق.</p>
    <div class="tip">💡 تلميح: اربط حزام الأمان،
    واتبع اللوحات المرورية، ولا تقد بسرعة لا تناسب الرؤية.</div>
  </section>
</main>

<footer>تعلم بأمان • لا تستبدل الدروس التدريب العملي</footer>

<script>
const lessons = [
{
title:"📗 الدرس الأول: فحص السيارة",
text:"افحص الإطارات والفرامل والأنوار، وتأكد من
صلاحية السيارة. تعلّم هذه الفحوصات مع شخص مؤهل.",
tip:"لا تبدأ الرحلة إذا كانت الفرامل أو الإطارات غير سليمة."
},
{
title:"⚠️ المنحدرات والمنعطفات",
text:"خفف السرعة قبل المنعطف، واتبع إشارات الطريق.
لا تتجاوز المركبات عند ضعف الرؤية أو قرب المنعطفات.",
tip:"حافظ على مسافة آمنة، ولا تستخدم الهاتف أثناء القيادة."
},
{
title:"💡 تلميحات السلامة",
text:"استخدم حزام الأمان، وانتبه للمركبات المقابلة،
وتوقف في مكان آمن إذا تعبت أو ساءت الرؤية.",
tip:"لا تنزل منحدرًا على الوضع المحايد؛ تعلّم استخدام
التروس والفرامل بالطريقة الصحيحة مع مدرب مؤهل."
}
];

function showLesson(i){
const l=lessons[i];
document.getElementById("content").innerHTML=
"<h2>"+l.title+"</h2><p>"+l.text+
"</p><div class='tip'>💡 "+l.tip+"</div>";
}

function startQuiz(){
document.getElementById("content").innerHTML=`
<h2>📝 اختبار السلامة</h2>
<p>ماذا تفعل قبل دخول منعطف جبلي؟</p>
<button onclick="answer(false)">أزيد السرعة</button>
<button onclick="answer(true)">أخفف السرعة وأنتبه للطريق</button>
<p id="result"></p>`;
}
function answer(ok){
document.getElementById("result").textContent=ok
?"أحسنت! هذه هي الإجابة الأكثر أمانًا."
:"حاول مرة أخرى: خفف السرعة قبل المنعطف.";
}
</script>
</body>
</html>
