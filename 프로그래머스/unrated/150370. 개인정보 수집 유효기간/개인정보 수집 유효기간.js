function 만료일구하기(term, privacy) {
  privacy = privacy.split('.');

  privacy[1] = +privacy[1] + term;

  while (privacy[1] > 12) {
    privacy[1] -= 12;
    +privacy[0]++;
  }

  if (privacy[2] === '01') {
    privacy[2] = '28';
    if (privacy[1] === 1) {
      privacy[1] = '12';
      privacy[0] = String(+privacy[0] - 1);
    } else {
      privacy[1] = String(+privacy[1] - 1);
    }
  } else {
    privacy[2] = String(+privacy[2] - 1).padStart(2, 0);
  }

  privacy[0] += '';
  privacy[1] = String(privacy[1]).padStart(2, 0);
  return privacy.join('.');
}

function solution(today, terms, privacies) {
  // 약관종류와 유효기간 미리 정의
  const tempTerms = {};
  terms.forEach((term) => {
    tempTerms[term.split(' ')[0]] = +term.split(' ')[1];
  });

  let i = 1;

  const answer = [];

  privacies.forEach((privacyArr) => {
    const privacy = privacyArr.split(' ')[0]; // 개인정보 수집 일자
    const term = privacyArr.split(' ')[1]; // 계약서의 약관종류

    const result = 만료일구하기(tempTerms[term], privacy);

    if (result < today) {
      answer.push(i);
    }
    i++;
  });
  // 계약서의 약관종류를 파악 - OK
  // 약관의 유효기간을 구한다. - OK
  // 만료일을 구한다. - OK
  // if 만료일>today then 파기 else 파기안함. - OK

  console.log(answer);
  return answer;
}