delete from actionwr where nowr like '%WRIPAK%';

delete from mscompany where idcompany = 'ipak';

delete from mscomputer where iddivisi = 'TOP';

delete from mscomputer where iddivisi = 'SAS';

delete from mscomputer where iddivisi = 'AGP';

delete from msdivisi where idcompany = 'ipak';

delete from wrschedule where nowr like '%WRIPAK%';

delete from trwr where nowr like '%WRIPAK%';

delete from trprdt where nopr like '%PRTOP%' or nopr like '%PRAGP%' or nopr like '%PRSAS%';

delete from trprhd where nowr like '%WRIPAK%';

delete from trgetpartdt where nogr like '%GPTOP%' or nopr like '%GPAGP%' or nopr like '%GPSAS%';

delete from trgetparthd where nowr like '%WRIPAK%';