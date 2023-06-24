"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const postgrest_js_1 = require("@supabase/postgrest-js");
const REST_URL = 'http://localhost:3000';
const postgrest = new postgrest_js_1.PostgrestClient(REST_URL);
// const { data, error } = await supabase.from('user').select();
const main = () => __awaiter(void 0, void 0, void 0, function* () {
    const { data, error } = yield postgrest.from('users').select();
    console.log(data);
    console.log('----------------------------');
    console.log(error);
});
main();
