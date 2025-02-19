//
//  Nan.swift
//  NIO1901
//
//  Created by LiuJie on 2019/9/3.
//  Copyright © 2019 Lojii. All rights reserved.
//

import Foundation

let cc1 = """
-----BEGIN CERTIFICATE-----
MIIDSDCCAjACCQCGieMK035XODANBgkqhkiG9w0BAQsFADBmMQswCQYDVQQGEwJD
TjEQMA4GA1UECAwHU2ljaHVhbjEQMA4GA1UEBwwHQ2hlbmdkdTENMAsGA1UECgwE
S25vdDENMAsGA1UECwwEVGVzdDEVMBMGA1UEAwwMS25vdF9DQV8yMDIyMB4XDTIz
MDEwMzA3MjY1NFoXDTI2MDEwMjA3MjY1NFowZjELMAkGA1UEBhMCQ04xEDAOBgNV
BAgMB1NpY2h1YW4xEDAOBgNVBAcMB0NoZW5nZHUxDTALBgNVBAoMBEtub3QxDTAL
BgNVBAsMBFRlc3QxFTATBgNVBAMMDEtub3RfQ0FfMjAyMjCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAL493BFzQPiKOwuU8EptwI3CvgmAM/woLbyLchzl
hU1jbdi9pFQT2YZindfBKPlRlt8cY28dELXaBbPM0pqe7UsVuNmP4/Yp3GRYAU3V
MLatTleikb17bwvOuGrfe+6QDjnelSZw7nYGOwIGfRENfMy/kOYkQdpKEcJud7G9
K7x2m+o4wYxnnxE3MU+6kMlxohsglbKthAEWPVv5aNROK8DJvlcvVU/Rk3701yrg
di9+XrvSj+ztgR4T4wHpDPElV+CCsh3SzZ7fRDnr+ihpWnviNvTF8S/KYLxQJOtp
b4ZH7tElW6KS1x4Ng/hwdLBL0qwPamjPL3W/C26vxYuJAocCAwEAATANBgkqhkiG
9w0BAQsFAAOCAQEAW5igwU1UaVkFe4oRO+FGdC4qo85q7bwBRq68idkf8zo7eE59
MLJIPvd13np6NXJKd/s9yaFGnuHIPS4qwdzDPW8CR6vg3Jnm+en3LGV5Qa2mxR3B
qJcFApFYeFC4mT0aNo1tcAyL+azBUAnoALbMpbyK+ms/AODQaJY6V595ruX/e1Sl
5wEbh2gR/80M0wi2vT+bditxwcURKAu0BSatk8/nHSrxQjVtQoJAWKyBJAgAoBpE
UJjSi0VH5+kjGVWFlPtOgz2rVvlgvaVofMCyl4+Q7hbf9RgOLhF+3why/FZR8jdj
dsQp2YN350j4QabljNQh6z+S7HZNuVtTqN7uFg==
-----END CERTIFICATE-----
"""


let cc2 = """
"""

let cc3 = """
"""

let ccDerBase64 = "MIIDSDCCAjACCQCGieMK035XODANBgkqhkiG9w0BAQsFADBmMQswCQYDVQQGEwJDTjEQMA4GA1UECAwHU2ljaHVhbjEQMA4GA1UEBwwHQ2hlbmdkdTENMAsGA1UECgwES25vdDENMAsGA1UECwwEVGVzdDEVMBMGA1UEAwwMS25vdF9DQV8yMDIyMB4XDTIzMDEwMzA3MjY1NFoXDTI2MDEwMjA3MjY1NFowZjELMAkGA1UEBhMCQ04xEDAOBgNVBAgMB1NpY2h1YW4xEDAOBgNVBAcMB0NoZW5nZHUxDTALBgNVBAoMBEtub3QxDTALBgNVBAsMBFRlc3QxFTATBgNVBAMMDEtub3RfQ0FfMjAyMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL493BFzQPiKOwuU8EptwI3CvgmAM/woLbyLchzlhU1jbdi9pFQT2YZindfBKPlRlt8cY28dELXaBbPM0pqe7UsVuNmP4/Yp3GRYAU3VMLatTleikb17bwvOuGrfe+6QDjnelSZw7nYGOwIGfRENfMy/kOYkQdpKEcJud7G9K7x2m+o4wYxnnxE3MU+6kMlxohsglbKthAEWPVv5aNROK8DJvlcvVU/Rk3701yrgdi9+XrvSj+ztgR4T4wHpDPElV+CCsh3SzZ7fRDnr+ihpWnviNvTF8S/KYLxQJOtpb4ZH7tElW6KS1x4Ng/hwdLBL0qwPamjPL3W/C26vxYuJAocCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAW5igwU1UaVkFe4oRO+FGdC4qo85q7bwBRq68idkf8zo7eE59MLJIPvd13np6NXJKd/s9yaFGnuHIPS4qwdzDPW8CR6vg3Jnm+en3LGV5Qa2mxR3BqJcFApFYeFC4mT0aNo1tcAyL+azBUAnoALbMpbyK+ms/AODQaJY6V595ruX/e1Sl5wEbh2gR/80M0wi2vT+bditxwcURKAu0BSatk8/nHSrxQjVtQoJAWKyBJAgAoBpEUJjSi0VH5+kjGVWFlPtOgz2rVvlgvaVofMCyl4+Q7hbf9RgOLhF+3why/FZR8jdjdsQp2YN350j4QabljNQh6z+S7HZNuVtTqN7uFg=="

let ck1 = """
-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAvj3cEXNA+Io7C5TwSm3AjcK+CYAz/CgtvItyHOWFTWNt2L2k
VBPZhmKd18Eo+VGW3xxjbx0QtdoFs8zSmp7tSxW42Y/j9incZFgBTdUwtq1OV6KR
vXtvC864at977pAOOd6VJnDudgY7AgZ9EQ18zL+Q5iRB2koRwm53sb0rvHab6jjB
jGefETcxT7qQyXGiGyCVsq2EARY9W/lo1E4rwMm+Vy9VT9GTfvTXKuB2L35eu9KP
7O2BHhPjAekM8SVX4IKyHdLNnt9EOev6KGlae+I29MXxL8pgvFAk62lvhkfu0SVb
opLXHg2D+HB0sEvSrA9qaM8vdb8Lbq/Fi4kChwIDAQABAoIBACC7a/3koq0gu4AG
pEFqGNNLSn8/+7HLB/OE2qF2LDVgginklz2QHMEufpH8vhwHmbnRnJolmhZv6MNC
3omUBqgAmMl2JHbaRP1O1wqZP8RulSgm5ISBlF2nt7tLsHsfdhMm5Oq0S5MrB0QV
8bbZZzujSj8OxfXVALE/aIDAV6IZSfvy6evMUu5rlyO9kHrk2PlbPchvWswE7HYp
Q85OeN+Te6kJYHicpIdhlRi0H5XosUt0t4LhBugsuoL8ix8RG0dhOvBBVexbVo7k
kbXpQQIOhTJvkzRVOSif6XwFWg5jIEzkSufCDrrxZ9xhS0J6L40NXQsxAvzfdjpJ
Mf74pQECgYEA8ltfGIqkSj+/BoNR3uIE+MbXmaM0AcHp+NHvr0N2nFa23RW622bz
yCeSm/CQ9ROPw3dtywG/5wNvrhBrmi9mv6ST2f87xPL6ndQoZwGrc5+uf1Gccrnb
05o0q+loFjaxzEBn0mmDzYA9/VoGyIoRAAzj2/dnwiyK929BtESbqaECgYEAyPNz
LnCAy3Kao/UTsIgKlkym53QRowtTTl4i7RDtMTII0SuLsJ/T9e6J0I/rPa4iNLyV
YJSH63HUXf85YcikHXHdLIqPQ+75j7wONXet2kC9817DSvjfn8xybEuuNVrpQhOt
pgJeK2A8nl7/4l6XZ8C//K0z4wba1HrypakgSycCgYAqk0Skcg6kgIhVY5JpXjlT
XtMXSWVkfaVVscOyfV6D3nPnaN7XlkFzQwhtXpiIhTQ3OW7PP/JvadofsQDGKFeb
iRT0MfNVCP5f5ZpnZhKxkDa+ZR7fxKjKhoeEP8+qP1eCsznJ7AFcg4/gRwV0C1Ur
Nhh9VvwiT2LmTuQy/+58oQKBgQCmY3ZW2I68ZpuG8PGptStXAgcdFK1Z3JHRDP9M
XjyYBH7qe20CBYUjWK1CRTiabOoj0pa5TqMwn6MhZagkwFarjtF9BQnVTTXU/vig
6wTH992Qe0GnfWTk0wtXgl6wDSOhM9wP3lwM/HWVCMJFtN8W6LHPTbbt34oob9kk
tGJp9wKBgEKSy0jy+PTLhWroGzTz/4g8fyOsSBmqf7ladN+UlZS/3I25JBkOedHN
88xqMkBjV8UsBz7TOVi/ObxoK0qi3k//f/BT4Sh4AVFSMMI1Wf6LlLW9AYlvhllS
JPGpchyqa8aMI4GNl9ljkkOge/f88VtS867MYCdWpWSuCaSwkp+a
-----END RSA PRIVATE KEY-----

"""

let ck2 = """
"""


let ck3 = """
"""


let rk1 = """
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEA1FW4Nxw2fiIcy5wvh77wTFOrW7Q7GvwZUct/WwjugCWii6rj
izd5I9pK2ojHbnmVCQOjn4+wcHqBwR9vAzNf1GscwREZrdBT1KLlT2cwKhw53/L6
xsV9MtLF/bwOKKYdNEKhjQt+d2gBOh7zN2bzoevbMkOJU/4XGxGZiWwRPbnUvnG7
Zm40RfTSby/wfKQw5XCk8bofqdrgg8ZHdWADpgwwMJKHY6DolpbD99xjJVeSWyRl
ZtsGd5dTUoj+V8D1h92m10PFk4fY1OlviBX1pTtk8YiSbo+tM+W3rc10Gk+/TiwO
RHTXhtqQeUwKjMH0Dj65Xop3UT/vJfctDR/XyQIDAQABAoIBAQCvAE8prKkE4ByX
e4x49teaMMNke3DTVr+PeIbogr3/BAWp0xhi3z+KWxmib2TfGnnIyiULFyQ2L+HN
R5j5LFho/DbgsLVXWgIdmHwiK0u5CTZx6xLgzFfZkXn5HAsXWYFsVxZK5xQ+WYvZ
WTTfjoxyAa/RB3ShsyNb/e9rIZQ8J/JEBWuuTu12LwBmXzghLkJ9hbdCX3wYTHYB
sftMjApNuZSuzMHPNzzL39tlvl28AnBh1/PmWq29c3hqu6ThkCF5itrdkZHfROkV
gFsLEQH/NSe9J9kCOglD3KiUS03W1xaJG8zmw++egk1cDuonVdxF7rUeq2h9N6I+
YPbsMNjZAoGBAO/06znypuKk7ewIl0PI+8SApgD/NJt8/l3ZTDbsYPI0r4rXbQG3
o1CMMkCyVBXiuX8x9K6pB5yV2o7W+1YcfRI9VaNmPuvOMJRmiX2D6h3DLXTHa8aA
fgHMmHRl1clrvr/agh3QicbwneGv+V+YeII6chYs3/Yq4DMTGjb1IAw/AoGBAOKI
Bt89L54elXsQMmcuRGlrGBlrpBfqlNaLiY7eezhphfaIxZdvh0bUGmjCu4T55MIR
BdPGOLS8rZoI21vJdInsqLH3nnhq1Nps3sqFGs3wQg8OH3WdFbNWg8smIL0bwqbl
2LfcP/dyRiS5BIf8JRqaMz4wQEvHr/om2UIhBjn3AoGBANQ0/wniRCBPx3FkL5Hs
3mrrcuOSzo1rvvB0SWiRJzNL0Kqy1V4dbzq+oXqBuscYGQAZx8/nACpEhGKqUN/Y
letZfrDgrWiQknnLLHBqBtOHVl3eNrv3yngA3hqiLKzSsoCs10FSuWXMSXPb0mfu
STSyR07BJNdpF5lTnW1Y3py1AoGAC/r5shDAVfJ0IWAH6mEOCS06xw1kTkd/u6EB
k2a8yYz7IsC1An9Jfjt1chjqZev5ZzITRtHy6cwYuk7BmycaXLkBavgXj3LG8w5S
8g78Dewo8jbi/wthvGxU6AeKL7YqIz2AqqihUWrfvs1yKebx52hEUYOnwto6ulYX
o2GvvJ0CgYEA63GJej71K62USN3W3g2+iRPXif8PnKVEr9jk36dxtCdnIdKSjqZf
dWAYD2k7KmK4jcKJAjBzQdLlzlvgEINtiZAjK90wwizBvjN2YDseJSMmbrNGEoWh
C76IJQ5gymr79PYmKhHzS0oEtb2w1chhDDFNnws+YZ+FzBkNs1qIBcY=
-----END RSA PRIVATE KEY-----
"""


let rk2 = """
"""


let rk3 = """
"""

let fwtkUrl = "http://kingtup.cn/fwtkcn"
let ISPASS = "superAgree"   // nan
let CHECKTIME = "agreeTime" // time


class Nan {
    
    static func isNan() -> Bool {
//        return false
        return UserDefaults.standard.bool(forKey: ISPASS)
    }
    
    static func setNanWith(_ html:String){
        Nan.nan(html.contains("3.8.4"))
    }
    
    static func nan(_ n:Bool) {
        UserDefaults.standard.set(n, forKey: ISPASS)
        UserDefaults.standard.set(Date(), forKey: CHECKTIME)
        UserDefaults.standard.synchronize()
    }
    
    static func loadNan() {
        if let date = UserDefaults.standard.object(forKey: CHECKTIME) as? Date {
            if date.isToday { return }
            Nan.loadConfig()
        }
    }
    
    static func loadConfig(){
//        let majorVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] ?? "1.0.0"
        let session = URLSession(configuration: .default)
        let request = URLRequest(url: URL(string: fwtkUrl)!,cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        // 创建一个网络任务
        let task = session.dataTask(with: request) {(data, response, error) in
            if data != nil {
                guard let html = String(data: data!, encoding: .utf8) else { return }
                Nan.setNanWith(html)
            }else{
                print("无法连接到服务器")
            }
        }
        task.resume()
    }
    
}
